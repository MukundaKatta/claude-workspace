# Add CI badge

Add a GitHub Actions CI status badge to a repo README.

## When to use

User says "add a CI badge", "show build status in README", or you notice a repo has CI workflows but no badge.

## Inputs

- `repo`: GitHub repo. Required.
- `workflow`: workflow filename (e.g. `ci.yml`). Optional — default is the most recently run workflow.

## Steps

1. Check `.github/workflows/` for workflow files. If none, tell the user and stop.
2. If `workflow` is not set, pick the one with the most recent run via `gh run list`.
3. Construct the badge URL: `https://github.com/<owner>/<repo>/actions/workflows/<workflow>/badge.svg`.
4. Construct the link: `https://github.com/<owner>/<repo>/actions/workflows/<workflow>`.
5. Open the README. Insert the badge near the top, under the title and tagline. Skip if a badge already exists.
6. Commit: `docs: add CI status badge to README`.

## Success criteria

- Badge renders on GitHub.
- Badge links to the Actions page.
- No duplicate badges.
