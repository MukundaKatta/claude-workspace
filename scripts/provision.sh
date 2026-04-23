#!/usr/bin/env bash
# Provision this workspace's skills and one agent per detected CLI.
# Prereqs: `multica setup` already done (logged in + daemon running).
set -euo pipefail

cd "$(dirname "$0")/.."

# ---------- preflight ----------

if ! command -v multica >/dev/null 2>&1; then
  echo "multica CLI not found. Install with: brew install multica-ai/tap/multica" >&2
  exit 1
fi

AUTH=$(multica auth status 2>&1 || true)
if echo "$AUTH" | grep -qi "not authenticated"; then
  echo "Not authenticated. Run: multica login" >&2
  exit 1
fi

STATUS=$(multica daemon status 2>&1 || true)
if echo "$STATUS" | grep -qi "stopped"; then
  echo "Daemon is stopped. Run: multica daemon start" >&2
  exit 1
fi

# ---------- runtime ----------

RUNTIME_ID=$(multica runtime list --output json 2>/dev/null | jq -r '.[0].id // empty')
if [ -z "$RUNTIME_ID" ]; then
  echo "No runtime registered. Start the daemon and wait for it to check in." >&2
  exit 1
fi
echo "Using runtime: $RUNTIME_ID"

# ---------- skills ----------

EXISTING=$(multica skill list --output json 2>/dev/null | jq -r '.[].name' || true)

for f in .multica/skills/*.md; do
  name=$(basename "$f" .md)
  [ "$name" = "README" ] && continue

  if echo "$EXISTING" | grep -Fxq "$name"; then
    echo "skill '$name' already exists — skipping"
    continue
  fi

  title=$(head -1 "$f" | sed 's/^# //')
  desc=$(awk '/^## When to use/{flag=1;next}/^## /{flag=0}flag' "$f" | tr '\n' ' ' | sed 's/  */ /g' | cut -c1-200)
  content=$(cat "$f")

  echo "creating skill: $name"
  multica skill create \
    --name "$name" \
    --description "${desc:-$title}" \
    --content "$content" \
    --output json >/dev/null
done

# ---------- agents ----------

EXISTING_AGENTS=$(multica agent list --output json 2>/dev/null | jq -r '.[].name' || true)

declare -a AGENTS=(
  "Claude:claude:claude-sonnet-4-6"
  "OpenClaw:openclaw:"
  "Gemini:gemini:"
  "Codex:codex:"
  "OpenCode:opencode:"
  "Cursor:cursor-agent:"
  "Pi:pi:"
  "Hermes:hermes:"
)

for entry in "${AGENTS[@]}"; do
  IFS=: read -r name cli model <<<"$entry"

  if ! command -v "$cli" >/dev/null 2>&1; then
    continue
  fi

  if echo "$EXISTING_AGENTS" | grep -Fxq "$name"; then
    echo "agent '$name' already exists — skipping"
    continue
  fi

  echo "creating agent: $name ($cli)"
  if [ -n "$model" ]; then
    multica agent create \
      --name "$name" \
      --runtime-id "$RUNTIME_ID" \
      --model "$model" \
      --output json >/dev/null
  else
    multica agent create \
      --name "$name" \
      --runtime-id "$RUNTIME_ID" \
      --output json >/dev/null
  fi
done

echo
echo "Done."
echo "Skills:  $(multica skill list --output json 2>/dev/null | jq 'length') total"
echo "Agents:  $(multica agent list --output json 2>/dev/null | jq 'length') total"
