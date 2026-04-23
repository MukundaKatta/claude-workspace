# Multica skills

Reusable skill definitions for Multica agents working across the MukundaKatta portfolio. Each file is one skill — a named, parameterized routine an agent can invoke on any repo.

Skills are loaded into a Multica workspace via the web app (Settings -> Skills -> Import) or synced via the CLI. This directory is the source of truth for portfolio-wide skills; repo-specific skills stay in their repo.

## Skills in this directory

| Skill | When to use |
|---|---|
| [bump-version.md](bump-version.md) | Coordinated version bump across one or more repos |
| [add-ci-badge.md](add-ci-badge.md) | Add a GitHub Actions CI badge to a repo README |
| [sync-readme.md](sync-readme.md) | Regenerate a repo README from `package.json` or `pyproject.toml` |
| [triage-issues.md](triage-issues.md) | Label and prioritize open issues across repos |
| [audit-dependencies.md](audit-dependencies.md) | Scan a repo for outdated or vulnerable dependencies |

## Adding a new skill

1. Create `new-skill.md` in this directory.
2. Follow the template in any existing skill: `# Title`, `## When to use`, `## Inputs`, `## Steps`, `## Success criteria`.
3. Keep it short — a skill is a prompt, not a runbook. If it's longer than 40 lines, it's probably two skills.
4. Add a row to the table above.
5. Commit and push. Import into the Multica workspace.
