#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

scan_targets=(
  "README.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "docs"
  "examples"
  "metadata"
  "schemas"
  ".github"
)

echo "Checking public repository safety..."

blocked_path_regex='(^|/)(tmp|output|private|internal|deploys?|submissions?|runbooks?)(/|$)|(^|/)\.env(\.|$)'
if find . -type f | rg "$blocked_path_regex" >/tmp/onpage-public-check.txt; then
  echo "Blocked file path found." >&2
  cat /tmp/onpage-public-check.txt >&2
  exit 1
fi

if rg -n --hidden --pcre2 '-----BEGIN [A-Z ]*PRIVATE KEY-----|gh[opsu]_[A-Za-z0-9_]{20,}|op_sk_[A-Za-z0-9_]{12,}|[sr]k_(live|test)_[A-Za-z0-9_]{12,}|[A-Z0-9_]*(SECRET|TOKEN|PASSWORD)=[^[:space:]]+|[a-z]+://[^[:space:]]+:[^[:space:]@]+@' "${scan_targets[@]}" >/tmp/onpage-public-check.txt 2>/dev/null; then
  echo "Blocked credential-shaped content found." >&2
  cat /tmp/onpage-public-check.txt >&2
  exit 1
fi

if rg -n --hidden --pcre2 '\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b' "${scan_targets[@]}" >/tmp/onpage-public-check.txt 2>/dev/null; then
  echo "Raw IPv4 address found. Use a public domain or placeholder instead." >&2
  cat /tmp/onpage-public-check.txt >&2
  exit 1
fi

echo "Public-content safety check passed."
