---
title: Wiki Knowledge Auto-Filer (60min) · Jun 11 15:47
session_id: cron_610f265caa42_20260611_154732
date_added: 2026-06-11
source: cron
model: odytrice/qwen3.6:5090-27b
messages: 6
tools: 2
duration_seconds: 13
status: raw
---

# Wiki Knowledge Auto-Filer (60min) · Jun 11 15:47

*Session: cron_610f265caa42_20260611_154732 | Source: cron | Duration: 13s*

## Session Metadata

- **Messages**: 6
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
├── mkdocs.yml                 ← MkDocs config (auto-nav enabled via awesome-pages)
├── docs/
│   ├── index.md              ← master index page
│   ├── log.md                ← chronological ingest/lint/query log (append-only)
│   ├── raw/                  ← inbox for unprocessed sources
│   │   └── processed/        ← archived after compilation
│   ├── archive/              ← trashed pages with timestamped metadata headers
│   └── topics/
│       ├── <topic>/
│       │   ├── _index.md     ← topic overview + article list
│       │   └── <article>.md  ← individual articles
│       └── ...
└── site/                     ← built static site (gitignored)
```

### 🔌 MkDocs Global Auto-Navigation (awesome-pages plugin, Verified 2026-06-10)

The `mkdocs.yml` uses **`awesome-pages` plugin** which auto-generates the entire navigation tree from directory structure. **You NO LONGER need to manually list articles in nav.** Add new files/directories under... [truncated]

### [2] assistant



### [3] tool

{"output": "{'recent_messages_60min': 3, 'candidate_sessions': []}", "exit_code": 0, "error": null}

### [4] assistant



### [5] tool

{"output": "find: ‘/home/zack/wiki/docs/raw/’: No such file or directory\n---", "exit_code": 0, "error": null}

### [6] assistant

[SILENT]
