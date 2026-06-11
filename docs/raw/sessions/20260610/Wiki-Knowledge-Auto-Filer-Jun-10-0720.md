---
title: Wiki Knowledge Auto-Filer · Jun 10 07:20
session_id: cron_8c2fde26ed10_20260610_072015
date_added: 2026-06-11
source: cron
model: odytrice/qwen3.6:5090-27b
messages: 1
tools: 0
duration_seconds: 7
status: raw
---

# Wiki Knowledge Auto-Filer · Jun 10 07:20

*Session: cron_8c2fde26ed10_20260610_072015 | Source: cron | Duration: 7s*

## Session Metadata

- **Messages**: 1
- **Tool Calls**: 0
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

### 1. Filing Knowledge (Strict Fact-Verification First)

When conversations produce durable knowledge from external sources:
1. **Mandatory Web Verification**: Before adding ANY factual claims, execute the Enforced Search Routing script exactly as: `python3 ~/.hermes/scripts/layered_search.py --query "<QUERY>"`. 
   - Parse the JSON output (see `references/enforced-search-routing.md` for interpreting Exit C... [truncated]
