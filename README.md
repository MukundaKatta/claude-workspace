# claude-workspace

Central index of every repo under [@MukundaKatta](https://github.com/MukundaKatta), wired up so agents (via [Multica](https://github.com/multica-ai/multica), Claude Code, Codex, OpenClaw, Cursor) can reason across the whole portfolio.

This repo does not hold source code. It is the map. Point your agent at this README and it knows which repo a task belongs to.

## Portfolio at a glance

| | Count |
|---|---|
| Total public repos | 505 |
| Original (non-fork) | 136 |
| Active (non-fork, non-archived) | 99 |
| Forks | 369 |
| Archived | 329 |

## Quick start with Multica

Multica turns coding agents into teammates you can assign issues to. Set it up once, point it at these repos, stop copy-pasting prompts.

```bash
# Install Multica CLI (macOS / Linux)
brew install multica-ai/tap/multica

# One-command configure + auth + start local daemon
multica setup
```

Then provision this workspace's skills and agents in one shot:

```bash
git clone https://github.com/MukundaKatta/claude-workspace.git
cd claude-workspace
./scripts/provision.sh
```

`provision.sh` checks you're logged in, finds your runtime, imports the 5 skills from `.multica/skills/`, and creates one agent per CLI it detects on your `PATH` (Claude, OpenClaw, Gemini, Codex, OpenCode, Cursor, Pi, Hermes). Re-running is safe — it skips skills and agents that already exist.

After that, assign any issue from any of your repos to one of the new agents. The agent claims the work on your local runtime, executes, streams progress, and reports back.

Full CLI reference: [multica-ai/multica CLI_AND_DAEMON.md](https://github.com/multica-ai/multica/blob/main/CLI_AND_DAEMON.md). Self-host: [SELF_HOSTING.md](https://github.com/multica-ai/multica/blob/main/SELF_HOSTING.md).

## Using this workspace with Claude Code

1. Clone this repo and open it in Claude Code:
   ```bash
   git clone https://github.com/MukundaKatta/claude-workspace.git
   cd claude-workspace
   claude
   ```
2. Claude reads [CLAUDE.md](CLAUDE.md) on startup and picks up the full portfolio map.
3. Ask "open the alertiq repo and add a new rule" and Claude knows exactly where to go.

## Active projects (99)

All 99 active originals, sorted by theme. Raw metadata in [`data/repos.ndjson`](data/repos.ndjson).

### AI agents & agent infrastructure

| Repo | Stack | Description |
|---|---|---|
| [karna](https://github.com/MukundaKatta/karna) | TypeScript | Self-hosted personal AI assistant with multi-channel messaging, extensible skills, and semantic memory |
| [AgentRAG](https://github.com/MukundaKatta/AgentRAG) | Python | Modular RAG pipeline — chunking, embedding, retrieval, reranking with pluggable vector stores |
| [astra-agent](https://github.com/MukundaKatta/astra-agent) | TypeScript | Standalone agent runtime — tool execution, context management, multi-model routing |
| [agentmem](https://github.com/MukundaKatta/agentmem) | Python | Memory management — short-term, long-term, semantic memory with automatic consolidation |
| [SwarmKit](https://github.com/MukundaKatta/SwarmKit) | Python | Multi-agent framework with voting and consensus |
| [swarmcast](https://github.com/MukundaKatta/swarmcast) | Python | Universal swarm intelligence engine |

### LLM tooling & evals

| Repo | Stack | Description |
|---|---|---|
| [EvalBench](https://github.com/MukundaKatta/EvalBench) | Python | BLEU, ROUGE, semantic similarity, custom metrics |
| [evalharness](https://github.com/MukundaKatta/evalharness) | TypeScript | Red teaming, regression testing, CI/CD for AI |
| [TokenWise](https://github.com/MukundaKatta/TokenWise) | Python | Token counting, cost estimates, budget tracking across LLM providers |
| [llm-bench-cli](https://github.com/MukundaKatta/llm-bench-cli) | Python | Fast CLI for benchmarking local LLMs |
| [HybridFind](https://github.com/MukundaKatta/HybridFind) | Python | Hybrid BM25 + vector search with Reciprocal Rank Fusion |
| [oss-contributions](https://github.com/MukundaKatta/oss-contributions) | Python | Public hub for AI SDK, MCP, and eval contributions |

### MCP (Model Context Protocol)

| Repo | Stack | Description |
|---|---|---|
| [MCPForge](https://github.com/MukundaKatta/MCPForge) | Python | Build, test, deploy MCP servers — scaffolding + hot-reload + registry publishing |
| [mcp-quickserve](https://github.com/MukundaKatta/mcp-quickserve) | Python | Minimal toolkit for creating MCP servers from plain functions with decorators |
| [mcp-toolkit](https://github.com/MukundaKatta/mcp-toolkit) | TypeScript | Toolkit for building MCP servers and clients |
| [mcpcheck](https://github.com/MukundaKatta/mcpcheck) | TypeScript | MCP config linter for Claude Desktop, Cursor, Cline, Windsurf, Zed |
| [rag-knowledge-base](https://github.com/MukundaKatta/rag-knowledge-base) | TypeScript | RAG knowledge base with FastAPI, ChromaDB, Claude API streaming |

### Dev tooling

| Repo | Stack | Description |
|---|---|---|
| [patchly](https://github.com/MukundaKatta/patchly) | TypeScript | AI code review bot — flags bugs, suggests fixes, explains why |
| [prdforge](https://github.com/MukundaKatta/prdforge) | TypeScript | AI workbench for PMs — synthesize calls, draft PRDs, ship roadmaps |
| [waitlist-api](https://github.com/MukundaKatta/waitlist-api) | TypeScript | Shared waitlist backend for landing pages on Vercel KV |

### Security

| Repo | Stack | Description |
|---|---|---|
| [alertiq](https://github.com/MukundaKatta/alertiq) | Python | AI SOC analyst — alert triage, correlation, incident response |
| [vulnfix](https://github.com/MukundaKatta/vulnfix) | Python | AI vulnerability scanner with fix suggestions |
| [prithvi](https://github.com/MukundaKatta/prithvi) | Python | Container security scanner |

### Healthcare & wellness

| Repo | Stack | Description |
|---|---|---|
| [prana](https://github.com/MukundaKatta/prana) | Python | Vital sign estimation from smartphone camera (HR, BP, SpO2, resp rate) |
| [clinical-nlp-toolkit](https://github.com/MukundaKatta/clinical-nlp-toolkit) | Python | NLP for clinical notes — entity extraction, coding, summarization |
| [Oradent](https://github.com/MukundaKatta/Oradent) | TypeScript | Dental practice management platform |
| [chartly](https://github.com/MukundaKatta/chartly) | TypeScript | AI SOAP-note scribe — cuts physician documentation time by 75% |
| [platewise](https://github.com/MukundaKatta/platewise) | TypeScript | Snap-a-plate nutrition tracker with macros, calories, and gaps |
| [moontrack](https://github.com/MukundaKatta/moontrack) | TypeScript | Privacy-first cycle tracker with energy and sleep coaching |
| [breathly](https://github.com/MukundaKatta/breathly) | TypeScript | Guided breathwork for anxiety, sleep, and focus |
| [restwise](https://github.com/MukundaKatta/restwise) | TypeScript | AI sleep coach plugging into Oura, Whoop, Apple Watch |
| [samecrew](https://github.com/MukundaKatta/samecrew) | TypeScript | Peer-matched emotional support — new dads, immigrants, first-time founders |
| [tintalk](https://github.com/MukundaKatta/tintalk) | TypeScript | Text-first teen mental health with human escalation |

### Education

| Repo | Stack | Description |
|---|---|---|
| [mathkin](https://github.com/MukundaKatta/mathkin) | TypeScript | K–10 AI math tutor — homework, test prep, drills |
| [readmate](https://github.com/MukundaKatta/readmate) | TypeScript | Reading coach for first-graders with parent progress reports |
| [codegarden](https://github.com/MukundaKatta/codegarden) | TypeScript | AI coding tutor for teens — games, Discord bots, mods |
| [crammr](https://github.com/MukundaKatta/crammr) | TypeScript | AI prep tutor for JEE, NEET, MCAT, CAT, bar |
| [fluentpal](https://github.com/MukundaKatta/fluentpal) | TypeScript | AI voice tutor for English — real conversations, gentle corrections |
| [primeint](https://github.com/MukundaKatta/primeint) | TypeScript | AI mock interviews with role-specific questions and feedback |
| [scholar](https://github.com/MukundaKatta/scholar) | TypeScript | Research assistant — synthesizes sources into an outline |

### SMB products

| Repo | Stack | Description |
|---|---|---|
| [Office3](https://github.com/MukundaKatta/Office3) | HTML | Officethree Technologies — AI products for small businesses |
| [voiceagent](https://github.com/MukundaKatta/voiceagent) | TypeScript | AI voice receptionists for SMBs |
| [answeroo](https://github.com/MukundaKatta/answeroo) | TypeScript | 24/7 AI receptionist — dentists, salons, law firms, trades |
| [fanout](https://github.com/MukundaKatta/fanout) | TypeScript | Agentic content studio — one product, 5 drafts, 15 channels |
| [postops](https://github.com/MukundaKatta/postops) | TypeScript | AI captions, hashtags, and scheduling from a photo |
| [pitchr](https://github.com/MukundaKatta/pitchr) | TypeScript | Polished agency proposals in ten minutes |
| [replynow](https://github.com/MukundaKatta/replynow) | TypeScript | AI drafts responses to every Google review in your voice |
| [quotebolt](https://github.com/MukundaKatta/quotebolt) | TypeScript | Contractor quoting — labor, materials, markup from plain text |
| [pricematch](https://github.com/MukundaKatta/pricematch) | TypeScript | Freelance pricing backed by industry rates |
| [feather](https://github.com/MukundaKatta/feather) | TypeScript | Solo-founder CRM — clients, deals, follow-ups without Salesforce |
| [chaptr](https://github.com/MukundaKatta/chaptr) | TypeScript | Paid community platform — messaging, events, gated content |
| [followy](https://github.com/MukundaKatta/followy) | TypeScript | AI meeting teammate — Jira tickets, Slack follow-ups, next calls |
| [triaged](https://github.com/MukundaKatta/triaged) | TypeScript | AI inbox autopilot — sort, summarize, draft replies |
| [solo-shop](https://github.com/MukundaKatta/solo-shop) | TypeScript | Creator commerce — start selling with a single photo |
| [storie](https://github.com/MukundaKatta/storie) | TypeScript | Niche storefronts for potters, bakers, coaches, authors |
| [platemap](https://github.com/MukundaKatta/platemap) | TypeScript | Menu digitization with calories, allergens, QR-ready |
| [buildcost](https://github.com/MukundaKatta/buildcost) | Python | AI construction cost estimation from blueprints |
| [bustrack](https://github.com/MukundaKatta/bustrack) | TypeScript | Real-time school bus tracking with AI arrival prediction |
| [amogha-cafe](https://github.com/MukundaKatta/amogha-cafe) | JavaScript | Full-stack Firebase restaurant app with ordering, kitchen display, QR dine-in |
| [StockPulse](https://github.com/MukundaKatta/StockPulse) | TypeScript | Stock market analytics and portfolio dashboard |
| [SpotRank](https://github.com/MukundaKatta/SpotRank) | JavaScript | AI SEO audit and local business ranking |

### Creative & interfaces

| Repo | Stack | Description |
|---|---|---|
| [DesignLint](https://github.com/MukundaKatta/DesignLint) | TypeScript | UI/UX linter — accessibility, contrast, spacing |
| [analystai](https://github.com/MukundaKatta/analystai) | TypeScript | AI spreadsheet for analyzing large doc sets with citations |
| [artigen](https://github.com/MukundaKatta/artigen) | TypeScript | AI art community on React Native + Expo + Supabase |
| [chetana](https://github.com/MukundaKatta/chetana) | TypeScript | AI consciousness research — 14 indicators from 6 scientific theories |
| [nexus-search](https://github.com/MukundaKatta/nexus-search) | TypeScript | AI intelligence engine on Next.js 14 + Claude + Brave Search |
| [animeify](https://github.com/MukundaKatta/animeify) | TypeScript | Photo-to-anime in six seconds — Ghibli, Shinkai, shonen |
| [headshotly](https://github.com/MukundaKatta/headshotly) | TypeScript | Studio-grade headshots from selfies |
| [inkwise](https://github.com/MukundaKatta/inkwise) | TypeScript | AI tattoo designer with flash and on-skin preview |
| [memoryloop](https://github.com/MukundaKatta/memoryloop) | TypeScript | Restore and animate old family photos |
| [petrait](https://github.com/MukundaKatta/petrait) | TypeScript | AI portraits of your pet in royal, Renaissance, astronaut styles |
| [polydub](https://github.com/MukundaKatta/polydub) | TypeScript | Lip-synced video dubbing in 40+ languages |
| [thumblift](https://github.com/MukundaKatta/thumblift) | TypeScript | MrBeast-quality thumbnails in thirty seconds |
| [twincast](https://github.com/MukundaKatta/twincast) | TypeScript | Clone yourself on video — any script, any language |
| [riffly](https://github.com/MukundaKatta/riffly) | TypeScript | Studio-quality vocals from ethically licensed artist voices |
| [quilled](https://github.com/MukundaKatta/quilled) | TypeScript | AI newsletter ghostwriter in your voice |
| [pindrop](https://github.com/MukundaKatta/pindrop) | TypeScript | Indie podcast editor — chapters, show notes, transcripts |
| [flickup](https://github.com/MukundaKatta/flickup) | TypeScript | Podcast-to-shorts — sixty vertical clips with captions |
| [gridcraft](https://github.com/MukundaKatta/gridcraft) | TypeScript | Visual Instagram grid planner for six months of posts |

### Consumer & lifestyle

| Repo | Stack | Description |
|---|---|---|
| [fridgechef](https://github.com/MukundaKatta/fridgechef) | TypeScript | Dinner ideas from a photo of your fridge |
| [cancely](https://github.com/MukundaKatta/cancely) | TypeScript | Find and cancel forgotten subscriptions in one tap |
| [boxit](https://github.com/MukundaKatta/boxit) | TypeScript | AI receipt filing — email, photo, or forward |
| [rightside](https://github.com/MukundaKatta/rightside) | TypeScript | Plain-English legal copilot — landlords, tenants, freelancers |
| [signoff](https://github.com/MukundaKatta/signoff) | TypeScript | Read contracts like a lawyer — red flags and negotiable terms |
| [relood](https://github.com/MukundaKatta/relood) | TypeScript | Local resale for kids clothes, toys, and gear |
| [sendrail](https://github.com/MukundaKatta/sendrail) | TypeScript | Stablecoin remittance — US/GCC to India, Philippines in seconds |
| [gigledger](https://github.com/MukundaKatta/gigledger) | TypeScript | 1099 income, expenses, and estimated taxes |
| [applybot](https://github.com/MukundaKatta/applybot) | TypeScript | AI job auto-applier — one profile, thousands of tailored apps |

### Personal, data, community

| Repo | Stack | Description |
|---|---|---|
| [mukunda-ai](https://github.com/MukundaKatta/mukunda-ai) | TypeScript | Personal portfolio — mukunda.dev |
| [MukundaKatta](https://github.com/MukundaKatta/MukundaKatta) | Python | Profile README |
| [claude-workspace](https://github.com/MukundaKatta/claude-workspace) | Shell | This repo — central index for agent tooling |
| [heimdall](https://github.com/MukundaKatta/heimdall) | Python | Curated AI system prompts |
| [sadhak](https://github.com/MukundaKatta/sadhak) | JavaScript | AI job search pipeline on Claude Code |
| [rnht](https://github.com/MukundaKatta/rnht) | TypeScript | Rudra Narayana Hindu Temple community platform |
| [survivalnode](https://github.com/MukundaKatta/survivalnode) | TypeScript | Offline survival computer with tools, maps, reference data |
| [sports-betting-analytics](https://github.com/MukundaKatta/sports-betting-analytics) | Python | Prop bet analyzer — odds aggregation + ML models for +EV opportunities |
| [carprice](https://github.com/MukundaKatta/carprice) | Jupyter | Car price prediction with regression |
| [Employee_Management_System_Project](https://github.com/MukundaKatta/Employee_Management_System_Project) | HTML | Employee management with RBAC |
| [TeamZion](https://github.com/MukundaKatta/TeamZion) | — | — |

## The rest

Archived originals and forks are indexed in [`data/repos.ndjson`](data/repos.ndjson) (one JSON record per line, 505 records total). Refresh with:

```bash
./scripts/refresh.sh
```

This rewrites `data/repos.ndjson` from the GitHub API so the index stays fresh.

## Files

| File | Purpose |
|---|---|
| [README.md](README.md) | Human-facing index (this file) |
| [CLAUDE.md](CLAUDE.md) | Claude Code context — loaded on every session |
| [AGENTS.md](AGENTS.md) | Multica / generic-agent context (symlink to CLAUDE.md) |
| [.multica/skills/](.multica/skills/) | Starter Multica skills for cross-repo work |
| [scripts/refresh.sh](scripts/refresh.sh) | Regenerate the repo index from the GitHub API |
| [scripts/provision.sh](scripts/provision.sh) | Import skills + create agents in your Multica workspace (idempotent) |
| [data/repos.ndjson](data/repos.ndjson) | Raw repo metadata — one JSON record per repo |

## License

MIT
