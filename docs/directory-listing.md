# Directory Listing

## Name

On-Page.ai SEO MCP

## Short Description

Give AI agents evidence-backed on-page SEO audits, entity gaps, competitor
coverage, internal-link opportunities, and page-experience benchmarks.

## Long Description

On-Page.ai SEO MCP connects AI agents to the hosted On-Page.ai analysis server.
Agents can scan a live URL for a target keyword, compare it against the current
search-result cohort, identify missing entities and competitor coverage gaps,
surface internal-link candidates, and return customer-safe structured reports.

Use it when an agent needs real search-focused evidence before recommending SEO
edits.

## Server URL

```text
https://api.on-page.ai/mcp
```

## Cursor Plugin

- Manifest: `.cursor-plugin/plugin.json`
- MCP config: `mcp.json`
- Skill: `skills/on-page-seo/SKILL.md`

## Transport

Streamable HTTP

## Authentication

OAuth where supported. Manual clients can use an On-Page.ai API key as a bearer
token.

## Scope

```text
mcp:seo
```

## Categories

- SEO
- Marketing
- Content optimization
- AI agents
- Analytics

## Tools

- `scan_page`
- `scan_page_lite`
- `scan_page_deep`
- `classify_text`
- `check_job`
- `wait_for_job`
- `get_job_result`
- `check_credits`

## Links

- Homepage: <https://api.on-page.ai>
- Install: <https://api.on-page.ai/install>
- MCP docs: <https://api.on-page.ai/mcp/docs>
- Pricing: <https://api.on-page.ai/pricing>
- Privacy: <https://api.on-page.ai/privacy>
- Terms: <https://api.on-page.ai/terms>
