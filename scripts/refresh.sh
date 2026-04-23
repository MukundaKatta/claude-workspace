#!/usr/bin/env bash
# Regenerate data/repos.ndjson from the GitHub API.
# Requires: gh (authenticated), jq.
set -euo pipefail

cd "$(dirname "$0")/.."

USER="${GH_USER:-MukundaKatta}"
OUT="data/repos.ndjson"

echo "Refreshing $OUT for @$USER..."

gh api "/users/$USER/repos" --paginate --jq '.[] | {
  name,
  description,
  language,
  stars: .stargazers_count,
  forks: .forks_count,
  updated: .updated_at,
  fork: .fork,
  archived,
  url: .html_url,
  topics,
  homepage,
  size
}' > "$OUT"

COUNT=$(wc -l < "$OUT" | tr -d ' ')
echo "Wrote $COUNT records to $OUT."

echo "Summary:"
jq -s '{
  total: length,
  originals: map(select(.fork==false)) | length,
  active: map(select(.fork==false and .archived==false)) | length,
  forks: map(select(.fork==true)) | length,
  archived: map(select(.archived==true)) | length
}' "$OUT"
