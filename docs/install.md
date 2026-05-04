# Install On-Page.ai MCP

The hosted MCP server URL is:

```text
https://api.on-page.ai/mcp
```

For the latest guided install flow, use:

<https://api.on-page.ai/install>

## Claude Desktop

1. Open Claude Desktop.
2. Go to Settings -> Connectors.
3. Choose Add custom connector.
4. Paste:

   ```text
   https://api.on-page.ai/mcp
   ```

5. Save the connector.
6. Run an On-Page.ai tool. Claude opens a browser sign-in flow.

## Claude Code

Use the install page for the current command:

<https://api.on-page.ai/install>

Claude Code can connect to the hosted MCP server with a bearer token generated
from the On-Page.ai dashboard.

## OpenAI Codex

Use the install page for the current Codex setup instructions:

<https://api.on-page.ai/install>

Manual clients should use:

```text
https://api.on-page.ai/mcp
```

with an On-Page.ai API key as the bearer token.

## ChatGPT

Use the install page for the current ChatGPT app setup path:

<https://api.on-page.ai/install>

When ChatGPT asks for the MCP server URL, use:

```text
https://api.on-page.ai/mcp
```

## Cursor, Cline, VS Code, Windsurf, n8n, and API Clients

Use the install page for current client-specific instructions:

<https://api.on-page.ai/install>

Manual MCP clients should use:

- URL: `https://api.on-page.ai/mcp`
- Transport: HTTP
- Auth: bearer token

## Getting a Key

For manual clients, create an API key from the On-Page.ai dashboard:

<https://api.on-page.ai/dashboard/mcp>

OAuth-based clients may open a browser sign-in flow instead.

