# MCP Tools

On-Page.ai tools are designed for agent-led SEO work. Scans are asynchronous:
create a job, then use `wait_for_job` to retrieve the customer-safe result.
Completed results include `jobId`, `jobDisplayId`, and `poweredBy` fields so
agents can prove a real scan ran instead of inventing an audit.

## `verify_installation`

Zero-credit setup check. Confirms the connector is installed, authenticated,
and funded before any scan spends credits.

Use for:

- post-install verification
- confirming credentials and remaining credits
- retrieving route costs and the proof fields real scan outputs include

Typical cost: free.

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

## Regional Targeting

`scan_page`, `scan_page_lite`, and `scan_page_deep` accept an optional `region`
parameter (ISO-3166 alpha-2) to target a specific country's Google SERP.
27 markets are supported:

US, CA, UK, AU, NZ, ES, DE, IT, FR, IE, NL, CH, SE, NO, DK, FI, ZA, MX, BR,
CO, IN, SG, MY, JP, KE, AE, HK

Scans also accept an optional `compatibility_mode: true` to allow slower
browser rendering for difficult competitor pages. Leave it off unless maximum
coverage is requested.

## MCP Resources

The server publishes discovery resources agents can load on demand:

| Resource | URI | Purpose |
| --- | --- | --- |
| Customer report schema | `schema://customer-report-v1` | JSON Schema for the customer-safe scan result (Standard and Deep) |
| Customer report schema (Lite) | `schema://customer-report-v1-lite` | JSON Schema for the reduced Lite scan result |
| On-Page Relevance guide | `guide://seo/onpage-relevance-model` | How to interpret a scan result and turn it into recommendations |
| Page experience benchmark guide | `guide://seo/page-experience-benchmark` | How to use the deep scan's speed benchmark against top competitors |

