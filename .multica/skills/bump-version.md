# Bump version

Coordinated version bump across one or more repos. Handles `package.json`, `pyproject.toml`, `setup.py`, and `Cargo.toml`.

## When to use

User says "bump version", "release X.Y.Z", or "cut a new version of <repo>".

## Inputs

- `repo`: GitHub repo (e.g. `MukundaKatta/astra-agent`). Required.
- `bump`: `major`, `minor`, `patch`, or explicit semver. Required.
- `tag`: whether to create a git tag. Default: yes.
- `push`: whether to push. Default: no (wait for user confirmation).

## Steps

1. Clone or update the repo.
2. Detect the manifest file (`package.json`, `pyproject.toml`, `setup.py`, `Cargo.toml`).
3. Read the current version.
4. Compute the new version from `bump`.
5. Update the manifest and any hard-coded version strings (README badges, `__version__`, etc.). Grep for the old version first.
6. Update the changelog if present. New section: `## X.Y.Z — YYYY-MM-DD`.
7. Commit: `chore: bump version to X.Y.Z`.
8. If `tag`, create `vX.Y.Z`.
9. Report files changed, new version, and whether push is needed.

## Success criteria

- Manifest shows new version.
- `git grep <old-version>` returns no stale references outside lockfiles.
- Changelog has a new entry.
- No push without explicit user approval.
