# MCP Tools

On-Page.ai tools are designed for agent-led SEO work. Scans are asynchronous:
create a job, then use `wait_for_job` to retrieve the customer-safe result.

## `scan_page`

Default full SEO scan for a URL and keyword.

Use for:

- on-page SEO audits
- ranking diagnostics
- missing entities
- semantic coverage
- internal-link opportunities
- minimal-diff optimization recommendations

Typical cost: 2 credits.

## `scan_page_lite`

Fast scan focused on entity coverage and competitor cohort analysis.

Use for:

- quick first-pass audits
- bulk entity-gap checks
- faster workflows where internal-link and content-brief output is not needed

Typical cost: 1.5 credits.

## `scan_page_deep`

Deeper scan with more competitor coverage and optional page-experience
benchmarking.

Use for:

- competitor-depth analysis
- content-gap comparisons
- content briefs
- page-experience comparison against ranking competitors

Typical cost: 3 credits.

## `classify_text`

Classifies a URL or raw text into topical buckets.

Use for:

- checking topical focus
- categorizing pages
- validating whether content matches an intended topic

Typical cost: 0.2 credits.

## Async Helpers

| Tool | Purpose |
| --- | --- |
| `check_job` | Lightweight job status check |
| `wait_for_job` | Preferred follow-up after starting a scan |
| `get_job_result` | Fetch a known completed result |
| `check_credits` | Check balance and route costs |

