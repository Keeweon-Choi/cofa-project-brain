# Cofa MCP and tool policy (reviewed)

**Organizer restrictions override this repository.** The user relays the event's rules in the session. Until the user confirms something is allowed, treat these as not allowed: Computer Use or other automatic computer operation; sending the task statement, files, code, or outputs to any outside service; personal API keys; connecting AI services or models other than the ones provided; `git push`; bypassing event controls; installing or upgrading the provided agent CLI. Check results by hand in the preview the environment provides.

## Default: no extra MCP
Plain built-in shell, ripgrep, existing test runner and local compiler are preferred. A time-boxed task rarely needs more.

## Optional, only if the event allows it and it works on site at the first try
- Graphify: code-only (AST) local mode only. Its semantic extraction calls an LLM backend, which would be a separate AI model connection — keep it off. Do not let an install helper rewrite workspace `AGENTS.md` without inspection.
- Serena MCP: optional local symbol/ref navigation, only if language server/runtime is preinstalled and start succeeds immediately. No remote HTTP exposure. Avoid if `rg` covers the problem.
- Mermaid: generate `.mmd` / Markdown from verified source locations. Rendering locally is optional; no remote Mermaid service required.

## Excluded unless the event rules explicitly allow them
- Playwright MCP, Chrome DevTools MCP, browser-control or desktop-control servers: these are automatic computer operation.
- Hosted documentation/search MCPs (e.g. Context7) and any tool that sends queries to a remote service: queries can carry task content. Codex's own knowledge plus local package docs are enough.
- Any tool that calls an LLM or AI model other than the provided one(s).
- GitHub write/push tools, remote file sync, cloud memory, remote vector store, telemetry/analytics forwarding of task contents.
- Remote agent-to-agent messaging services carrying task text, logs, files, or solutions.

## Runtime capability check (no updates)
1. `codex --version`; `/status` for model and permissions; the platform MCP tab only if needed.
2. Check local `node`, `python3`, `uv`, package tools only when required.
3. Enable at most one additional code-navigation MCP; if setup is slow or unreliable, revert to built-in code search.
4. `mcp.json` is an empty JSON template for platforms that have an MCP settings tab. Native Codex config is typically TOML; never assume one format is automatically equivalent to the other.

> 모든 도구 사용 결과와 오류는 사용자에게 **한국어**로 요약한다. 기술 로그/명령의 원문은 유지한다.
