# Audit dependencies

Scan a repo for outdated or vulnerable dependencies and report the findings. Do not upgrade automatically.

## When to use

User says "audit deps", "security check", or "what's outdated in <repo>".

## Inputs

- `repo`: GitHub repo. Required.
- `include_dev`: audit dev deps too. Default: yes.

## Steps

1. Detect the ecosystem from the lockfile: `package-lock.json`, `pnpm-lock.yaml`, `uv.lock`, `poetry.lock`, `Cargo.lock`, `go.sum`.
2. Run the appropriate audit:
   - Node: `npm audit --json` or `pnpm audit --json`.
   - Python: `pip-audit --format json` or `uv pip compile --universal --no-deps`.
   - Rust: `cargo audit --json`.
   - Go: `govulncheck ./...`.
3. Run the appropriate outdated check:
   - Node: `npm outdated --json` or `pnpm outdated --format json`.
   - Python: `uv pip list --outdated`.
   - Rust: `cargo outdated`.
4. Produce a report with two sections: `Vulnerabilities` (CVEs with severity) and `Outdated` (current vs latest).
5. Do not modify the lockfile. Do not run `npm update` or equivalent.
6. If any critical or high CVEs are found, recommend upgrade paths in the report but wait for user approval.

## Success criteria

- Report delivered to the user.
- No files modified.
- No commits.
