# Triage issues

Label and prioritize open issues across one or more repos.

## When to use

User says "triage", "clean up the issue tracker", or "what should I work on next in <repo>".

## Inputs

- `repo`: GitHub repo, or a list. Required.
- `max`: maximum issues to triage per run. Default: 20.

## Steps

1. Fetch open, unlabeled issues: `gh issue list --repo <repo> --state open --search "no:label" --limit <max>`.
2. For each issue:
   - Read the title and body.
   - Classify as one of: `bug`, `feature`, `docs`, `question`, `duplicate`, `invalid`.
   - Estimate priority: `p0` (broken / blocking), `p1` (important), `p2` (nice to have).
   - Apply the labels via `gh issue edit`. If a label does not exist on the repo, skip (do not create labels).
3. If an issue looks like a duplicate, link it to the original in a comment and apply `duplicate`.
4. Report: count triaged, breakdown by type, top 3 `p0` issues.

## Success criteria

- Every targeted issue has at least one type label and one priority label.
- No new labels created on the repo.
- Report returned to the user.
- Do not close issues. Do not leave drive-by comments without clear value.
