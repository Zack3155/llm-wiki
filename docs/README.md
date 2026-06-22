---
title: Readme
date_added: 2026-06-21
date_modified: 2026-06-21
status: stub
confidence: 0.00
sources:
  - local wiki
---
# LLM Wiki

A structured, auto-maintained knowledge base for LLM-related research, novel lore analysis, and character/entity profiling. Built with MkDocs + Material for MkDocs, with automated linter, health checks, and daily sync pipelines.

## Overview

This wiki serves as a general-purpose knowledge repository with a strong focus on **novel lore analysis** — character profiles, concept documentation, identity timelines, and divergence tables for Chinese web novels and related media.

### Current Topics

| Topic | Description | Pages |
|---|---|---|
| **General** | Site identity, cross-topic boundaries, maintenance reports | 2 |
| **Global High Martial Arts (全球高武)** | Character profiles, concept archives, divine beings | 11 |
| **Online Apocalypse of All Worlds (诸界末日在线)** | Character profiles, lore concepts, divergence tables, identity timelines | 25 |

## Structure

```
wiki/
├── docs/
│   ├── index.md              # Wiki home page
│   ├── log.md                # Activity log
│   ├── topics/               # All topic articles
│   │   ├── general/          # Site-level docs
│   │   ├── 全球高武/          # Global High Martial Arts
│   │   └── 诸界末日在线/       # Online Apocalypse of All Worlds
│   ├── raw/                  # Raw/unprocessed drafts
│   ├── pages/                # Generated/rendered pages
│   ├── archive/              # Archived content
│   └── reports/              # Health & audit reports
├── scripts/                  # Maintenance scripts
├── mkdocs.yml                # MkDocs configuration
├── requirements.txt          # Python dependencies
└── start-wiki.sh             # Quick-start script
```

## Features

- **Auto-linting**: Every 6 hours, a cron job runs `wiki-lint.py` to check for broken links, missing cross-references, and content consistency.
- **Auto-filing**: LLM-backed knowledge filer categorizes new content and maintains cross-links.
- **Health monitoring**: Daily health reports track wiki integrity, rendering status, and content quality.
- **MkDocs Material theme**: Dark/light mode, navigation sections, expandable TOC, search.

## Getting Started

### Prerequisites

- Python 3.11+
- MkDocs + Material for MkDocs

### Installation

```bash
cd wiki
pip install -r requirements.txt
mkdocs serve
```

Then open `http://127.0.0.1:8081/` in your browser.

### Quick Start

```bash
./start-wiki.sh
```

## Automation

| Cron Job | Frequency | Description |
|---|---|---|
| Wiki Linter | Every 6 hours | Auto-commits lint fixes to `main` |
| Wiki Maintenance | Every 6 hours | Runs content audit, health report, MkDocs compat check |
| Wiki Candidate Reports | Daily (03:35) | Generates candidate analysis reports |
| Wiki Knowledge Auto-Filer | Every 3 hours | LLM-backed knowledge synchronization |

All commits are auto-generated with the message format: `Wiki Linter Auto-Commit: <timestamp>`.

## Development

### Adding New Content

1. Create a new `.md` file under `docs/topics/<topic>/`.
2. Use the frontmatter template:

```yaml
---
title: Page Title
name: page-slug
topic: <topic-name>
status: draft | review | complete
confidence: 0.90
sources:
  - Source 1
tags:
  - tag1
  - tag2
date_added: 2026-06-21
date_modified: 2026-06-21
---
```

3. Run the linter locally: `python3 scripts/wiki-lint.py --check`
4. Commit and push.

### Running Manual Checks

```bash
# Full maintenance suite
python3 scripts/cron-wiki-maintenance.py

# Content audit
python3 scripts/wiki-content-audit.py --wiki-root .

# Health report
python3 scripts/wiki-health.py --wiki-root .

# MkDocs compatibility
python3 scripts/mkdocs-compat-check.py
```

## Tech Stack

- **Framework**: MkDocs + Material for MkDocs
- **Language**: Markdown (UTF-8)
- **Automation**: Python scripts + cron jobs
- **CI/CD**: Git push triggers auto-lint and health checks
- **Hosting**: GitHub Pages (optional)

## License

MIT

## Summary


## Summary


## Summary


## Summary


## Summary

