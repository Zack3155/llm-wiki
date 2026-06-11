---
title: Wiki Knowledge Auto-Filer · Jun 09 03:28
session_id: cron_8c2fde26ed10_20260609_032828
date_added: 2026-06-11
source: cron
model: odytrice/qwen3.6:5090-27b
messages: 5
tools: 2
duration_seconds: 18
status: raw
---

# Wiki Knowledge Auto-Filer · Jun 09 03:28

*Session: cron_8c2fde26ed10_20260609_032828 | Source: cron | Duration: 18s*

## Session Metadata

- **Messages**: 5
- **Tool Calls**: 2
- **Model**: odytrice/qwen3.6:5090-27b

## Raw Messages

### [1] user

[IMPORTANT: The user has invoked the "llm-wiki" skill, indicating they want you to follow its instructions. The full skill content is loaded below.]

---
name: llm-wiki
description: "LLM-maintained personal knowledge base. Compile raw sources into a structured markdown wiki, auto-lint for consistency, serve as a browsable website. Inspired by Karpathy's 'LLM Knowledge Bases' workflow. Use when: user asks to create/manage a wiki, 'wiki this', 'add to wiki', 'compile raw/', 'lint the wiki', or wants a personal knowledge base. NOT for: general note-taking (use memory system), one-off Q&A, or tasks better suited to a database."
---

# Wiki — LLM-Maintained Knowledge Base

You maintain a personal wiki for the user. The wiki is a collection of markdown articles organized by topic. You are the compiler, editor, and librarian.

## Setup

If the wiki doesn't exist yet, run `scripts/bootstrap.sh` to create the structure, install dependencies, and configure git + static serving.

The wiki lives at `~/wiki/` with this structure:

```
~/wiki/
├── mkdocs.yml
├── docs/
│   ├── index.md              ← master index (you maintain)
│   ├── log.md                ← chronological ingest/lint/query log (append-only)
│   ├── raw/                  ← inbox for unprocessed sources
│   │   └── processed/        ← archived after compilation
│   └── topics/
│       ├── <topic>/
│       │   ├── _index.md     ← topic overview + article list
│       │   └── <article>.md  ← individual articles
│       └── ...
└── site/                     ← built static site (gitignored)
```

## Core Operations

### 1. Filing Knowledge (most common)

When conversations produce durable knowledge, file it directly:

1. Determine the right topic directory (create new one if needed)
2. Write or update the article in `docs/topics/<topic>/<article>.md`
3. **Update related pages** — scan existing articles for references to the same concepts, entities, or data. Add cross-links, update numbers, note where new info supersedes... [truncated]

### [2] assistant



### [3] tool

{"success": true, "mode": "discover", "query": "technical discovery comparison analysis synthesis decision rationale", "results": [], "count": 0, "message": "No matching sessions found."}

### [4] tool

{"total_count": 0}

### [5] assistant

[SILENT]
