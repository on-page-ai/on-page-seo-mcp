---
name: on-page-seo
description: Use this skill when auditing a page for a target keyword, improving on-page SEO, finding entity coverage gaps, comparing competitor term coverage, or identifying internal-link opportunities.
---

# On-Page.ai SEO Workflow

Use the On-Page.ai SEO MCP server when a task needs search-focused evidence before recommending content or page changes.

Default workflow:

1. Ask for the target URL and keyword if either is missing.
2. Run the hosted `on-page-seo` MCP server against the URL and keyword.
3. Wait for the scan result before making recommendations.
4. Prioritize missing high-importance entities, competitor cohort gaps, and internal-link opportunities.
5. Recommend specific edits that preserve the page's existing intent and structure.

Useful tools exposed by the server:

- `scan_page`
- `scan_page_lite`
- `scan_page_deep`
- `check_job`
- `wait_for_job`
- `get_job_result`
- `classify_text`
- `check_credits`

Connection:

```json
{
  "mcpServers": {
    "on-page-seo": {
      "url": "https://api.on-page.ai/mcp"
    }
  }
}
```
