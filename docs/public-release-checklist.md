# Public Release Checklist

Use this before changing the repository visibility to public.

## Before Visibility Change

1. Confirm this is the standalone docs-only repository.
2. Confirm there is no shared git history with any private repository.
3. Confirm `.cursor-plugin/plugin.json`, `mcp.json`, and `server.json` contain
   only public install metadata.
4. Run:

   ```bash
   bash scripts/check-public-content.sh
   git status --short
   ```

5. Review every tracked file:

   ```bash
   git ls-files
   ```

6. Confirm GitHub Actions passes on `main`.

## After Visibility Change

Immediately enable the repository protections that GitHub only exposes for
public repositories on some plans:

1. Branch protection or repository ruleset for `main`.
2. Require pull requests before merge.
3. Require the `safety` status check.
4. Disable force pushes and branch deletion.
5. Enable secret scanning and push protection if available.
6. Add a custom secret-scanning pattern for On-Page.ai API keys.

Do not make the private application repository public.
