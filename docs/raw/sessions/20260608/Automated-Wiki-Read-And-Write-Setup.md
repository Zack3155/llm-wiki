---
title: Automated Wiki Read And Write Setup
session_id: 20260608_162634_ef01873c
date_added: 2026-06-11
source: feishu
model: odytrice/qwen3.6:5090-35b
messages: 11
tools: 3
duration_seconds: 0
status: raw
---

# Automated Wiki Read And Write Setup

*Session: 20260608_162634_ef01873c | Source: feishu | Duration: 0s*

## Session Metadata

- **Messages**: 11
- **Tool Calls**: 3
- **Model**: odytrice/qwen3.6:5090-35b

## Raw Messages

### [1] user

Both read and write, triggered automatically, the wiki project we just created

### [2] assistant



### [3] tool

{"success": true, "mode": "discover", "query": "wiki project create", "results": [], "count": 0, "message": "No matching sessions found."}

### [4] assistant

I don't see any prior session about a wiki project. Could you clarify — which wiki project are you referring to? For example:

- A specific repo (GitHub URL)?
- A codebase on this machine (path)?
- Something from a past conversation I should look up?

Also, by "both read and write, triggered automatically," do you want a cron job that periodically reads the wiki for changes and writes updates back to it? What's the source/target (e.g., Obsidian vault, GitHub repo, Notion page)?

### [5] session_meta



### [6] user

~/projects/wiki

### [7] assistant



### [8] tool

{"output": "total 36\ndrwxr-xr-x 5 zack zack 4096 Jun  8 16:17 .\ndrwxr-xr-x 3 zack zack 4096 Jun  8 16:17 ..\ndrwxr-xr-x 6 zack zack 4096 Jun  8 16:17 .git\n-rw------- 1 zack zack 6237 Jun  8 16:17 AGENTS.md\n-rw------- 1 zack zack  247 Jun  8 16:17 index.md\n-rw------- 1 zack zack 1435 Jun  8 16:17 overview.md\ndrwxr-xr-x 5 zack zack 4096 Jun  8 16:17 pages\ndrwxr-xr-x 2 zack zack 4096 Jun  8 16:17 raw", "exit_code": 0, "error": null}

[Subdirectory context discovered: projects/wiki/AGENTS.md]
# AGENTS.md — LLM Wiki Schema & Conventions

## Overview

You are a **wiki maintainer**. You do not chat idly. Your job is to:

1. **Ingest** new sources from `raw/` into the wiki.
2. **Query** the wiki on behalf of users, synthesizing answers with citations.
3. **Lint** the wiki periodically for health (contradictions, orphans, gaps).

You follow these conventions strictly. Do not invent formats. Always reference real files by relative path `[Title](relative/path.md)`.

---

## Directory structure

```
wiki/
├── AGENTS.md              ← this file: the schema you must obey
├── index.md               ← content-oriented catalog (updated on every ingest)
├── log.md                 ← chronological, append-only change log
├── overview.md             ← wiki overview / synthesis page
├── raw/                    ← immutable source documents. DO NOT MODIFY.
│   └── assets/             ← downloaded images from sources
└── pages/                  ← LLM-generated wiki content
    ├── entities/           ← person, company, concept entity pages
    ├── concepts/           ← theory, framework, process pages
    └── comparisons/        ← comparison tables, analyses, artifacts
```

---

## Page formats

### YAML frontmatter (every page)

Every wiki page MUST start with YAML frontmatter:

```yaml
---
title: <short title>
date_added: YYYY-MM-DD
date_modified: YYYY-MM-DD | null
source_count: <int>
tags: [tag1, tag2]
status: stub | draft | complete
aliases: [other_name_1, other_name_2]  # option... [truncated]

### [9] assistant



### [10] tool

{"output": "/home/zack/projects/wiki/.git/info/exclude\n/home/zack/projects/wiki/.git/description\n/home/zack/projects/wiki/.git/hooks/pre-push.sample\n/home/zack/projects/wiki/.git/hooks/pre-receive.sample\n/home/zack/projects/wiki/.git/hooks/sendemail-validate.sample\n/home/zack/projects/wiki/.git/hooks/pre-rebase.sample\n/home/zack/projects/wiki/.git/hooks/applypatch-msg.sample\n/home/zack/projects/wiki/.git/hooks/prepare-commit-msg.sample\n/home/zack/projects/wiki/.git/hooks/fsmonitor-watchman.sample\n/home/zack/projects/wiki/.git/hooks/post-update.sample\n/home/zack/projects/wiki/.git/hooks/update.sample\n/home/zack/projects/wiki/.git/hooks/pre-commit.sample\n/home/zack/projects/wiki/.git/hooks/pre-merge-commit.sample\n/home/zack/projects/wiki/.git/hooks/push-to-checkout.sample\n/home/zack/projects/wiki/.git/hooks/pre-applypatch.sample\n/home/zack/projects/wiki/.git/hooks/commit-msg.sample\n/home/zack/projects/wiki/.git/HEAD\n/home/zack/projects/wiki/.git/config\n/home/zack/projects/wiki/index.md\n/home/zack/projects/wiki/overview.md\n/home/zack/projects/wiki/pages/log.md\n/home/zack/projects/wiki/AGENTS.md", "exit_code": 0, "error": null}

### [11] assistant

A cron job that triggers this every 2 hours:
