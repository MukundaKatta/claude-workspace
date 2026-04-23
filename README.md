# claude-workspace

Central index of every repo under [@MukundaKatta](https://github.com/MukundaKatta), wired up so agents (via [Multica](https://github.com/multica-ai/multica), Claude Code, Codex, OpenClaw, Cursor) can reason across the whole portfolio.

This repo does not hold source code. It is the map. Point your agent at this README and it knows which repo a task belongs to.

## Portfolio at a glance

| | Count |
|---|---|
| Total public repos | 453 |
| Original (non-fork) | 84 |
| Active (non-fork, non-archived) | 55 |
| Forks | 369 |
| Archived | 321 |

## Quick start with Multica

Multica turns coding agents into teammates you can assign issues to. Set it up once, point it at these repos, stop copy-pasting prompts.

```bash
# Install Multica CLI (macOS / Linux)
brew install multica-ai/tap/multica

# One-command configure + auth + start local daemon
multica setup
```

After setup, open [multica.ai/app](https://multica.ai/app), create an agent per CLI you use (Claude Code, Codex, OpenClaw, etc.), and assign an issue from any of the repos below. The agent claims the work on your local runtime, executes, streams progress, and reports back.

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

## Active projects (55)

Sorted by theme. All links go to GitHub.

### AI agents & agent infrastructure

| Repo | Stack | Description |
|---|---|---|
| [karna](https://github.com/MukundaKatta/karna) | TypeScript | Self-hosted personal AI assistant with multi-channel messaging, extensible skills, and semantic memory |
| [AgentRAG](https://github.com/MukundaKatta/AgentRAG) | Python | Modular RAG pipeline — chunking, embedding, retrieval, reranking with pluggable vector stores |
| [astra-agent](https://github.com/MukundaKatta/astra-agent) | TypeScript | Standalone agent runtime — tool execution, context management, multi-model routing |
| [agent-memory-kit](https://github.com/MukundaKatta/agent-memory-kit) | Python | Persistent memory for AI agents — semantic search, token-aware context, pluggable storage |
| [agentmem](https://github.com/MukundaKatta/agentmem) | Python | Memory management — short-term, long-term, semantic memory with automatic consolidation |
| [AgentBench](https://github.com/MukundaKatta/AgentBench) | Python | Agent evaluation — accuracy, efficiency, tool usage scoring |
| [agent-benchmark-suite](https://github.com/MukundaKatta/agent-benchmark-suite) | Python | Comprehensive benchmarking suite for agent capabilities |
| [agent-eval-arena](https://github.com/MukundaKatta/agent-eval-arena) | Python | Head-to-head agent evaluation with ELO rating |
| [SwarmKit](https://github.com/MukundaKatta/SwarmKit) | Python | Multi-agent framework with voting and consensus |
| [swarmcast](https://github.com/MukundaKatta/swarmcast) | Python | Universal swarm intelligence engine |

### LLM tooling & evals

| Repo | Stack | Description |
|---|---|---|
| [EvalBench](https://github.com/MukundaKatta/EvalBench) | Python | BLEU, ROUGE, semantic similarity, custom metrics |
| [evalharness](https://github.com/MukundaKatta/evalharness) | TypeScript | Red teaming, regression testing, CI/CD for AI |
| [evallab](https://github.com/MukundaKatta/evallab) | TypeScript | Independent AI model evaluation and capability testing |
| [TokenWise](https://github.com/MukundaKatta/TokenWise) | Python | Token counting, cost estimates, budget tracking across LLM providers |
| [ModelBench](https://github.com/MukundaKatta/ModelBench) | Python | Model serving benchmarks — p50/p95/p99 latency, throughput |
| [llm-bench-cli](https://github.com/MukundaKatta/llm-bench-cli) | Python | Fast CLI for benchmarking local LLMs |
| [HybridFind](https://github.com/MukundaKatta/HybridFind) | Python | Hybrid BM25 + vector search with Reciprocal Rank Fusion |
| [EmbedBench](https://github.com/MukundaKatta/EmbedBench) | Python | TF-IDF, BoW, n-gram embedding comparison |
| [oss-contributions](https://github.com/MukundaKatta/oss-contributions) | Python | Public hub for AI SDK, MCP, and eval contributions |

### MCP (Model Context Protocol)

| Repo | Stack | Description |
|---|---|---|
| [MCPForge](https://github.com/MukundaKatta/MCPForge) | Python | Build, test, deploy MCP servers — scaffolding + hot-reload + registry publishing |
| [mcp-quickserve](https://github.com/MukundaKatta/mcp-quickserve) | Python | Minimal toolkit for creating MCP servers from plain functions with decorators |
| [mcp-toolbox](https://github.com/MukundaKatta/mcp-toolbox) | Python | Auto-generates schemas from type hints, handles JSON-RPC |
| [mcp-toolkit](https://github.com/MukundaKatta/mcp-toolkit) | TypeScript | Toolkit for building MCP servers and clients |
| [mcpcheck](https://github.com/MukundaKatta/mcpcheck) | TypeScript | MCP config linter for Claude Desktop, Cursor, Cline, Windsurf, Zed |
| [rag-knowledge-base](https://github.com/MukundaKatta/rag-knowledge-base) | TypeScript | RAG knowledge base with FastAPI, ChromaDB, Claude API streaming |

### Security

| Repo | Stack | Description |
|---|---|---|
| [alertiq](https://github.com/MukundaKatta/alertiq) | Python | AI SOC analyst — alert triage, correlation, incident response |
| [vulnfix](https://github.com/MukundaKatta/vulnfix) | Python | AI vulnerability scanner with fix suggestions |
| [prithvi](https://github.com/MukundaKatta/prithvi) | Python | Container security scanner |

### Healthcare

| Repo | Stack | Description |
|---|---|---|
| [prana](https://github.com/MukundaKatta/prana) | Python | Vital sign estimation from smartphone camera (HR, BP, SpO2, resp rate) |
| [clinical-nlp-toolkit](https://github.com/MukundaKatta/clinical-nlp-toolkit) | Python | NLP for clinical notes — entity extraction, coding, summarization |
| [Oradent](https://github.com/MukundaKatta/Oradent) | TypeScript | Dental practice management platform |

### SMB products

| Repo | Stack | Description |
|---|---|---|
| [Office3](https://github.com/MukundaKatta/Office3) | HTML | Officethree Technologies — AI products for small businesses |
| [voiceagent](https://github.com/MukundaKatta/voiceagent) | TypeScript | AI voice receptionists for SMBs |
| [fanout](https://github.com/MukundaKatta/fanout) | TypeScript | Agentic content studio — one product, 5 platform drafts, 15 channels |
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

### Personal, data, community

| Repo | Stack | Description |
|---|---|---|
| [mukunda-ai](https://github.com/MukundaKatta/mukunda-ai) | TypeScript | Personal portfolio — mukunda.dev |
| [MukundaKatta](https://github.com/MukundaKatta/MukundaKatta) | Python | Profile README |
| [heimdall](https://github.com/MukundaKatta/heimdall) | Python | Curated AI system prompts |
| [sadhak](https://github.com/MukundaKatta/sadhak) | JavaScript | AI job search pipeline on Claude Code |
| [rnht](https://github.com/MukundaKatta/rnht) | TypeScript | Rudra Narayana Hindu Temple community platform |
| [survivalnode](https://github.com/MukundaKatta/survivalnode) | TypeScript | Offline survival computer with tools, maps, reference data |
| [sports-betting-analytics](https://github.com/MukundaKatta/sports-betting-analytics) | Python | Prop bet analyzer — odds aggregation + ML models for +EV opportunities |
| [carprice](https://github.com/MukundaKatta/carprice) | Jupyter | Car price prediction with regression |
| [Employee_Management_System_Project](https://github.com/MukundaKatta/Employee_Management_System_Project) | HTML | Employee management with RBAC |
| [TeamZion](https://github.com/MukundaKatta/TeamZion) | — | — |

## The rest

Archived originals and forks are indexed in [`data/repos.ndjson`](data/repos.ndjson) (one JSON record per line, 453 records total). Refresh with:

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
| [data/repos.ndjson](data/repos.ndjson) | Raw repo metadata — one JSON record per repo |

## License

MIT
