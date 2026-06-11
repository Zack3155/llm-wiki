---
title: List of available wiki skills
session_id: 20260608_210255_f9bf7d
date_added: 2026-06-11
source: tui
model: odytrice/qwen3.6:5090-27b
messages: 32
tools: 13
duration_seconds: 279
status: raw
---

# List of available wiki skills

*Session: 20260608_210255_f9bf7d | Source: tui | Duration: 279s*

## Session Metadata

- **Messages**: 32
- **Tool Calls**: 13
- **Model**: odytrice/qwen3.6:5090-27b

## Raw Messages

### [1] user

what skills I ahve now is about wiki?

### [2] assistant



### [3] tool

{"success": true, "skills": [{"name": "dogfood", "description": "Exploratory QA of web apps: find bugs, evidence, reports.", "category": null}, {"name": "raw-dump-wiki-ingestion", "description": "Ingest structured conversation history dumps (e.g., from Hermes state.db export) into wiki pages using filename-based topic clustering. Extracts high-signal sections (Resolved Questions, Key Findings) and skips execution noise (tool output logs).", "category": null}, {"name": "wiki", "description": "LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database.", "category": null}, {"name": "yuanbao", "description": "Yuanbao (元宝) groups: @mention users, query info/members.", "category": null}, {"name": "claude-code", "description": "Delegate coding to Claude Code CLI (features, PRs).", "category": "autonomous-ai-agents"}, {"name": "codex", "description": "Delegate coding to OpenAI Codex CLI (features, PRs).", "category": "autonomous-ai-agents"}, {"name": "hermes-agent", "description": "Configure, extend, or contribute to Hermes Agent.", "category": "autonomous-ai-agents"}, {"name": "opencode", "description": "Delegate coding to OpenCode CLI (features, PR review).", "category": "autonomous-ai-agents"}, {"name": "architecture-diagram", "description": "Dark-themed SVG architecture/cloud/infra diagrams as HTML.", "category": "creative"}, {"name": "ascii-art", "description": "ASCII art: pyfiglet, cowsay, boxes, image-to-ascii.", "category": "creative"}, {"name": "ascii-video", "description": "ASCII video: convert video/audio to colored ASCII MP4/GIF.", "category": "creative"}, {"name": "baoyu-infograp... [truncated]

### [4] assistant

You have **2 skills** related to wiki:

1. **`wiki`** — LLM-maintained personal knowledge base. Compile raw sources into structured markdown wiki pages, auto-lint for consistency, serve as a browsable website. Triggered by "wiki this", "add to wiki", "compile raw/", "lint the wiki", or when you want a personal knowledge base.

2. **`raw-dump-wiki-ingestion`** — Ingest structured conversation history dumps (e.g., from Hermes state.db export) into wiki pages using filename-based topic clustering. Extracts high-signal sections like Resolved Questions and Key Findings while skipping execution noise (tool output logs).

Plus your memory notes that **LLM Wiki is your primary knowledge source** — I should load the `wiki` skill + `~/projects/wiki/AGENTS.md` before answering knowledge questions, unless you skip with `/wiki-skip`.

### [5] user

how about the skill in  ~/.hermes/skills/llm-wiki/?

### [6] assistant



### [7] tool

{"total_count": 7, "files": ["/home/zack/.hermes/skills/llm-wiki/skill-card.md", "/home/zack/.hermes/skills/llm-wiki/scripts/build.sh", "/home/zack/.hermes/skills/llm-wiki/scripts/bootstrap.sh", "/home/zack/.hermes/skills/llm-wiki/references/heartbeat-integration.md", "/home/zack/.hermes/skills/llm-wiki/references/article-template.md", "/home/zack/.hermes/skills/llm-wiki/_meta.json", "/home/zack/.hermes/skills/llm-wiki/SKILL.md"]}

### [8] assistant

The folder has more than just SKILL.md — let me load it:

### [9] tool

{"success": false, "error": "Skill 'wiki' not found.", "available_skills": ["dogfood", "raw-dump-wiki-ingestion", "wiki", "yuanbao", "claude-code", "codex", "hermes-agent", "opencode", "architecture-diagram", "ascii-art", "ascii-video", "baoyu-infographic", "claude-design", "comfyui", "design-md", "excalidraw", "humanizer", "lore-fact-checking", "manim-video", "p5js"], "hint": "Use skills_list to see all available skills"}

### [10] assistant

The skill list shows it exists but skill_view can't load it — likely an issue with how the skill is registered. Let me read its contents directly:

### [11] tool

{"content": "1|---\n2|name: wiki\n3|description: \"LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database.\"\n4|---\n5|\n6|# Wiki — LLM-Maintained Knowledge Base\n7|\n8|You maintain a personal wiki for the user. The wiki is a collection of markdown articles organized by topic. You are the compiler, editor, and librarian.\n9|\n10|## Setup\n11|\n12|If the wiki doesn't exist yet, run `scripts/bootstrap.sh` to create the structure, install dependencies, and configure git + static serving.\n13|\n14|The wiki lives at `~/wiki/` with this structure:\n15|\n16|```\n17|~/wiki/\n18|├── mkdocs.yml\n19|├── docs/\n20|│   ├── index.md              ← master index (you maintain)\n21|│   ├── log.md                ← chronological ingest/lint/query log (append-only)\n22|│   ├── raw/                  ← inbox for unprocessed sources\n23|│   │   └── processed/        ← archived after compilation\n24|│   └── topics/\n25|│       ├── <topic>/\n26|│       │   ├── _index.md     ← topic overview + article list\n27|│       │   └── <article>.md  ← individual articles\n28|│       └── ...\n29|└── site/                     ← built static site (gitignored)\n30|```\n31|\n32|## Core Operations\n33|\n34|### 1. Filing Knowledge (most common)\n35|\n36|When conversations produce durable knowledge, file it directly:\n37|\n38|1. Determine the right topic directory (create new one if needed)\n39|2. Write or update the article in `docs/topics/<topic>/<article>.md`\n40|3. **Update related pages** — scan existing articles for references to the same concepts, entities, or data. Add cross-links, update numbers, note where new info... [truncated]

### [12] assistant

The `~/.hermes/skills/llm-wiki/` directory holds the **same skill** that shows up as `wiki` in your skills list — the SKILL.md frontmatter has `name: wiki`. It's a substantial skill with this structure:

| File | Purpose |
|---|---|
| `SKILL.md` | Main skill (159 lines) — defines filing, compiling, linting, and building workflows |
| `scripts/bootstrap.sh` | Sets up `~/wiki/` directory, installs mkdocs, initializes git |
| `scripts/build.sh` | Rebuilds MkDocs site + commits to git |
| `references/article-template.md` | Template for new wiki articles |
| `references/heartbeat-integration.md` | Optional: wire wiki linting into your agent's heartbeat cycle |
| `skill-card.md` | Skill metadata/registration card |
| `_meta.json` | Package metadata |

**What it does:** LLM-maintained personal knowledge base at `~/wiki/` with MkDocs. Core operations:

1. **Filing Knowledge** — write/update articles, scan & update related pages for cross-links and superseded claims, then rebuild
2. **Compiling from `raw/`** — ingest source material dropped in the inbox, extract durable knowledge, move to `processed/`
3. **Linting (daily)** — find contradictions, stale data, dead links, orphan pages, weak articles
4. **Filing Good Answers** — proactively file synthesized Q&A as wiki pages
5. **Building** — MkDocs static site served on port 8300

The `skill_view` tool failed to load it earlier (registry mismatch), but the underlying skill is fully functional and matches what your memory notes reference for the LLM Wiki workflow.

### [13] user

how to solve skill_view tool failed to load it earlier (registry mismatch)

### [14] assistant

Let me investigate the registration:

### [15] tool

{"output": "drwxr-xr-x  4 zack zack 4096 Jun  8 20:56 llm-wiki\ndrwxr-xr-x  3 zack zack 4096 Jun  8 18:00 raw-dump-wiki-ingestion", "exit_code": 0, "error": null}

### [16] assistant

The problem is clear: the directory is named `llm-wiki` but the SKILL.md frontmatter has `name: wiki`. Let me check how Hermes resolves this:

### [17] tool

{"output": "/home/zack/.hermes/skills/llm-wiki/_meta.json\n---\n{\n  \"ownerId\": \"kn7c1ejynhqvtp6a28xwe6spex846b2s\",\n  \"slug\": \"llm-wiki\",\n  \"version\": \"1.2.0\",\n  \"publishedAt\": 1775326176884\n}", "exit_code": 0, "error": null}

### [18] assistant

Let me verify how the registry resolves skill names:

### [19] tool

{"output": "---\nname: raw-dump-wiki-ingestion\ndescription: >-\n  Ingest structured conversation history dumps (e.g., from Hermes state.db export)\n  into wiki pages using filename-based topic clustering. Extracts high-signal sections\n---\n## Description: <br>\nWiki helps an agent build and maintain a structured Markdown personal knowledge base, lint it for consistency, and serve it as a local MkDocs website. <br>\n\nThis skill is ready for commercial/non-commercial use. <br>\n\n## Publisher: <br>\n[nkhoit](https://clawhub.ai/user/nkhoit) <br>\n\n### License/Terms of Use: <br>\nMIT-0 <br>", "exit_code": 0, "error": null}

### [20] assistant



### [21] tool

{"success": true, "name": "wiki", "description": "LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database.", "tags": [], "related_skills": [], "content": "---\nname: wiki\ndescription: \"LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database.\"\n---\n\n# Wiki — LLM-Maintained Knowledge Base\n\nYou maintain a personal wiki for the user. The wiki is a collection of markdown articles organized by topic. You are the compiler, editor, and librarian.\n\n## Setup\n\nIf the wiki doesn't exist yet, run `scripts/bootstrap.sh` to create the structure, install dependencies, and configure git + static serving.\n\nThe wiki lives at `~/wiki/` with this structure:\n\n```\n~/wiki/\n├── mkdocs.yml\n├── docs/\n│   ├── index.md              ← master index (you maintain)\n│   ├── log.md                ← chronological ingest/lint/query log (append-only)\n│   ├── raw/                  ← inbox for unprocessed sources\n│   │   └── processed/        ← archived after compilation\n│   └── topics/\n│       ├── <topic>/\n│       │   ├── _index.md     ← topic overview + article list\n│       │   └── <article>.md  ← individual articles\n│       └── ...\n└── site/                     ← built static site (gitignored)\n```\n\n## Cor... [truncated]

### [22] assistant

Found it. The issue is a **naming mismatch**:

| Field | Value | Where |
|---|---|---|
| Directory name | `llm-wiki` | filesystem |
| YAML slug | `llm-wiki` | `_meta.json` |
| Frontmatter `name` | **`wiki`** | `SKILL.md` line 2 |

The registry resolves by directory slug (`llm-wiki`), so `skill_view(name='llm-wiki')` works but `skill_view(name='wiki')` fails. Meanwhile `skills_list` displays the frontmatter `name: wiki`, which is misleading.

Quick fix — update the frontmatter to match the directory:

### [23] tool

{"success": true, "diff": "--- a//home/zack/.hermes/skills/llm-wiki/SKILL.md\n+++ b//home/zack/.hermes/skills/llm-wiki/SKILL.md\n@@ -1,5 +1,5 @@\n ---\n-name: wiki\n+name: llm-wiki\n description: \"LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database.\"\n ---\n \n", "files_modified": ["/home/zack/.hermes/skills/llm-wiki/SKILL.md"], "lint": {"status": "skipped", "message": "No linter for .md files"}, "resolved_path": "/home/zack/.hermes/skills/llm-wiki/SKILL.md"}

### [24] assistant

Fixed. Now let me also update my memory entry to use the correct skill name:

### [25] tool

{"success": false, "error": "Failed to read file: /home/zack/.hermes/memories/memory.mdf"}

### [26] assistant



### [27] tool

{"error": "old_text is required for 'replace' action.", "success": false}

### [28] assistant



### [29] tool

{"error": "old_text is required for 'replace' action.", "success": false}

### [30] assistant



### [31] tool

{"success": true, "target": "memory", "entries": ["WSL curl environment: all search engines return zero usable results for Chinese queries. Bing returns JS-rendered SPA, Sogou mobile returns CDN bundle URLs, DuckDuckGo HTML returns Cloudflare challenge, Wikipedia API is only reliable engine when web_search tool is unavailable.", "LLM Wiki is PRIMARY knowledge source for ALL topics (fiction, lore, history, engineering, AI): load skill with skill_view(name='llm-wiki') + read ~/projects/wiki/AGENTS.md before answering ANY question. Dual-injection required: skill triggers on \"knowledge about X\", memory ensures fallback if session cache misses the skill. Load AGENTS.md first, cross-reference connections table, check source_count/status (stub=verify with web). Only search web when wiki is empty or stub flagged. User can override by explicitly saying \"don't use wiki\". Note: config.yaml has no default_skills option — this dual mechanism is needed.", "Hermes cron: changing a job from one-shot → recurring via update() does NOT work (the 'repeat' kwarg is silently ignored on update). You MUST delete the old job and recreate it. This applies to any schedule type change, not just one-shot↔recurring."], "usage": "52% — 1,152/2,200 chars", "entry_count": 3, "message": "Entry replaced."}

### [32] assistant

**Root cause:** Mismatch between three identifiers:

| Component | Was | Now |
|---|---|---|
| Directory | `llm-wiki` | unchanged |
| `_meta.json` slug | `llm-wiki` | unchanged |
| `SKILL.md` frontmatter `name:` | **`wiki`** (wrong) | **`llm-wiki`** (fixed) |

Hermes resolves skills by **directory slug**, not the YAML `name:` field. So `skill_view(name='llm-wiki')` works and `skill_view(name='wiki')` fails, but `skills_list` was showing `wiki` from the YAML — confusing the agent into trying the wrong name.

**What I changed:**
1. Patched `SKILL.md` frontmatter: `name: wiki` → `name: llm-wiki`
2. Updated my memory entry with the correct call: `skill_view(name='llm-wiki')`

From now on, both the tools and my memory will use **`llm-wiki`** consistently.
