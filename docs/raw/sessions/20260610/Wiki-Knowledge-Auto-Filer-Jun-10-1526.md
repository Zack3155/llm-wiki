---
title: Wiki Knowledge Auto-Filer · Jun 10 15:26
session_id: cron_8c2fde26ed10_20260610_152616
date_added: 2026-06-11
source: cron
model: odytrice/qwen3.6:5090-27b
messages: 5
tools: 2
duration_seconds: 15070
status: raw
---

# Wiki Knowledge Auto-Filer · Jun 10 15:26

*Session: cron_8c2fde26ed10_20260610_152616 | Source: cron | Duration: 15070s*

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

{"total_count": 7, "files": ["/home/zack/wiki/docs/topics/novel-lore/_ghost_test_target.md", "/home/zack/wiki/docs/topics/novel-lore/_index.md", "/home/zack/wiki/docs/topics/novel-lore/gu-qing-shan-profile.md", "/home/zack/wiki/docs/topics/novel-lore/bingfengzhishi-profile.md", "/home/zack/wiki/docs/topics/novel-lore/xiemozhizhu-profile.md", "/home/zack/wiki/docs/topics/novel-lore/honghuang-liudao-concept.md", "/home/zack/wiki/docs/topics/novel-lore/zhu-jie-mo-ri-ending.md"]}

### [4] tool

{"success": true, "mode": "discover", "query": "facts findings knowledge solution answer", "results": [], "count": 0, "message": "No matching sessions found."}

### [5] assistant

[SILENT]
