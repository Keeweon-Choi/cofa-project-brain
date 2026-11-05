# Optional Codex hooks (disabled by default)
Recent Codex releases describe `SessionStart`, `PreCompact`, `SubagentStop`, `Stop`, `PreToolUse` and other hooks. The Cofa pinned Codex version may not have them. Do NOT update the CLI, install hooks blindly, or bypass project trust/security requirements.

**Recommended:** no automatically active hooks in the exam run. Existing `AGENTS.md`/skills/PROJECT_STATE.md are reliable fallbacks.

If hooks are confirmed supported and the project is trusted:
- `SessionStart` read-only, short local state reminder only. Avoid duplicate massive context loading.
- `PreCompact` optionally preserve *existing verified* decisions in local files (no external transfer), but add it only after rehearsal; direct manual `PROJECT_STATE.md` update is simpler.
- `SubagentStop` review a worker's handoff fields, but a prompt-level worker contract is lower-risk.
- `Stop` no automatic whole-project test/lint: expensive, can fail on incomplete work and delay exam time.
- `PreToolUse` never a replacement for the organizer's security rules. Do not add remote network/logging hooks.

Use `codex --version`, `/hooks`, and the installed CLI's own help to check support. Prefer no hooks if there is any mismatch.

> 모든 도구 사용 결과와 오류는 사용자에게 **한국어**로 요약한다. 기술 로그/명령의 원문은 유지한다.
