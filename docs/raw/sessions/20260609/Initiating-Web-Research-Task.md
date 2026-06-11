---
title: Initiating Web Research Task
session_id: 20260609_192103_545a5c
date_added: 2026-06-11
source: cli
model: odytrice/qwen3.6:5090-27b
messages: 2
tools: 0
duration_seconds: 96
status: raw
---

# Initiating Web Research Task

*Session: 20260609_192103_545a5c | Source: cli | Duration: 96s*

## Session Metadata

- **Messages**: 2
- **Tool Calls**: 0
- **Model**: odytrice/qwen3.6:5090-27b

## Raw Messages

### [1] user

[IMPORTANT: The user has invoked the "web-research" skill, indicating they want you to follow its instructions. The full skill content is loaded below.]

---
name: web-research
description: Fallback web research when no dedicated `web_search` tool is available — curl-based search engine scraping, Wikipedia API access, and anti-captcha patterns for Chinese content discovery.
tags: [web, search, curl, fallback]
---

# Web Research (curl-based fallback)

Fallback technique for researching topics when no dedicated `web_search` tool is available. Uses curl + Python regex to fetch and extract information from search engines and reference sites.

## Triggers
- No `web_search` or `x_search` tool available
- Need to research a specific topic, novel, person, event
- User asks "what is X", "search for Y", "look up Z"

## Workflow

### 1. Pre-check: Wiki-first (MANDATORY)

Before any web research, **always search `~/wiki/docs/` for coverage first**. Per the wiki-first rule in memory:
- If relevant wiki page exists with status != stub → use it as primary source, optionally verify/update if flagged stale
- Only continue to web tools when wiki has zero coverage or page is marked 'stub'

### 2. Choose the research path (with Edge MCP as primary)

**Priority order (all environments):**
1. **Edge MCP browser** — `edge-surfing` skill: renders JS, accessibility snapshots, works for ALL engine types including Chinese novel/ACG lore. First choice always.
2. **Wikipedia REST API** — most reliable curl-based structured data source (see step 5)
3. **curl → Bing Desktop or DuckDuckGo HTML** — only when Edge MCP unavailable AND Wikipedia has no coverage

> **WSL curl reality check:** In WSL the following are known dead-ends and should be skipped immediately:
> - **Baidu**: Heavy captcha/JS challenge (>10KB obfuscated JS)
> - **Google**: Full reCAPTCHA + JavaScript rendering — cannot extract with curl
> - **Sogou mobile**: Returns CDN bundle URLs or Cloudflare challenge
> - **360 So**: Heavy a... [truncated]

### [2] assistant

Skill "web-research" already loaded. What would you like me to research?
