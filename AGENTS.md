# Workspace context for Claude

You are working in **claude-workspace**, the portfolio index for every repo under [@MukundaKatta](https://github.com/MukundaKatta). This repo is a map, not a codebase. Use it to decide which repo a task belongs to, then switch to that repo.

## Owner

- GitHub: [MukundaKatta](https://github.com/MukundaKatta)
- Email: mukunda.vjcs6@gmail.com
- Focus areas: AI agents, LLM tooling, MCP servers, evals, healthcare AI, SMB products

## Portfolio shape

- 453 public repos total, 84 originals, 55 actively maintained
- Heavy emphasis on agent infrastructure, LLM evals, and MCP tooling
- Secondary themes: healthcare AI (prana, clinical-nlp-toolkit), security (alertiq, vulnfix, prithvi), SMB verticals (voiceagent, buildcost, amogha-cafe)

For the full current list, read [data/repos.ndjson](data/repos.ndjson) — one JSON record per repo with name, description, language, stars, last-updated, fork/archived flags.

## Routing tasks to the right repo

When the user asks for work that could land in multiple places, use this decision order:

1. **Does the user name a repo?** Use that one. Do not second-guess.
2. **Is the task clearly in one theme?** Use the README table for that theme.
3. **Ambiguous?** Ask which repo. Do not silently pick.

Common routings:

| User says... | Likely repo |
|---|---|
| "add an eval for..." | evalharness (TS) or EvalBench (Py) — ask which stack |
| "new MCP server for X" | MCPForge (scaffolding) or mcp-toolkit (custom) |
| "agent memory / context" | agent-memory-kit or agentmem |
| "check my MCP config" | mcpcheck |
| "benchmark LLM speed" | llm-bench-cli or ModelBench |
| "vulnerability scan" | vulnfix (code) or prithvi (containers) |
| "alert triage" | alertiq |
| "voice bot for business" | voiceagent |
| "content for multiple platforms" | fanout |
| "blueprints to cost" | buildcost |

## Multica integration

This workspace is designed to work with [Multica](https://github.com/multica-ai/multica) — the managed-agents platform. The expected flow:

1. User runs `multica setup` once to connect their machine as a runtime.
2. User creates agents in the Multica web app, one per CLI (Claude Code, Codex, etc.).
3. User creates an issue in any repo and assigns it to a Multica agent.
4. The agent claims the issue, runs on the user's local daemon, and reports back.

When the user mentions "assign to an agent" or "queue this up", that's a Multica workflow — suggest `multica issue create --assign <agent>` rather than doing the work inline.

## Conventions

- **Commits / PRs:** never add Claude or Anthropic as co-author or contributor. User authored. Commit messages are concise and imperative.
- **Writing:** no em dashes in public-facing text (GitHub comments, PR descriptions, READMEs for other repos). Short is better than thorough.
- **Do not** mirror code from other repos into this one. This repo stays as metadata + config only.

## Updating the index

When repos are added, renamed, or archived, refresh the data:

```bash
./scripts/refresh.sh
```

This rewrites `data/repos.ndjson`. The README active-projects tables are hand-curated — update them manually when a notable new repo ships.

## Multica skills

Starter skills live in [`.multica/skills/`](.multica/skills/). These are reusable instructions that any Multica agent can invoke when working across repos — e.g. "bump-version-everywhere", "add-ci-badge", "sync-readme-from-package-json".
