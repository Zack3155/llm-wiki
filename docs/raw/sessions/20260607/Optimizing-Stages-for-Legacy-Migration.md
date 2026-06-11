---
title: Optimizing Stages for Legacy Migration
session_id: 20260607_035316_bfe99ef7
date_added: 2026-06-11
source: feishu
model: qwen3.6:35b-a3b
messages: 5
tools: 1
duration_seconds: 0
status: raw
---

# Optimizing Stages for Legacy Migration

*Session: 20260607_035316_bfe99ef7 | Source: feishu | Duration: 0s*

## Session Metadata

- **Messages**: 5
- **Tool Calls**: 1
- **Model**: qwen3.6:35b-a3b

## Raw Messages

### [1] user

[Replying to: "prd/erd generate， fixture includes， migration starts （based on erd）， auto test on migration with erd， submission comparison， update migration， conclude with skill， spec， index， memory update。"]

any stages can be optimize or to adjust for a legacy project migration

### [2] assistant

Looking at the sequence as-is, there are some ordering issues and gaps that are especially painful with legacy projects. Let me map out what's fragile and what to shuffle/insert:

## Ordering Issues (must fix)

| Current Order | Problem | Corrected Order |
|---|---|---|
| Stage 2: Fixture Includes | Fixtures can't exist before you know the target schema — they depend on ERD output | **After** Stage 3, not before |
| Stage 3: Migration Starts → Stage 4: Auto Test | You can't auto-test with ERD as validator if the migration hasn't been written yet | ERD generates *spec* first, then migration is built *against* that spec, then tested |

## What to Add / Adjust for Legacy Specifically

### [3] tool

{"question": "What legacy stack are we migrating from/to? (e.g., Django → Rails, monolith → microservices, SQL server → Postgres, etc.) This dramatically changes which stages need optimization. Also — is this a big-bang cutover or can we do incremental migration?", "choices_offered": ["Django → Node/Rails (language/framework flip)", "Monolith → Microservices (architecture shift)", "SQL Server/Oracle → PostgreSQL (DB platform flip)", "Rails 4→7 / Django 2→5 (version upgrade)"], "user_response": "[user did not respond within 10m]"}

### [4] assistant

No worries — here's the analysis for any legacy project:

---

## 🔴 Must Fix: Ordering Bugs

**Stage 2 (Fixture Includes) before Stage 3 (Migration)** is backwards. Fixtures assert *real data* against *target schema* — you can't generate them before ERD defines the target structure. **Move fixture generation to after migration spec is locked.**

---

## 🟡 Legacy-Specific Optimizations

### 1. **Prepend: Inventory & Risk Heatmap** (new stage between PRD and ERD)
Legacy projects hide traps. Before you draw any boxes:
- Run `pygount`, `depgraph` to map dependencies (dead code, orphans?)
- Audit `requirements.txt` / `Gemfile` / `go.mod` for unmaintained packages *past EOL*
- Flag all schema with **no existing tests** — these are highest risk
- Catalog **all migrations already applied in production but not in the repo** — legacy codebases often have out-of-band db changes you'll never see in git

### 2. **ERD → Schema Diff** (modify Stage 3)
For legacy projects, ERD alone is insufficient because:
- The current schema may be in a **state that no migration in the repo ever applied** (out-of-band migrations)
- You need to `pg_dump` or dump the *production database* first and diff against your ERD target state
- Insert **`dbt` model lineage check** between ERD → migration to verify every table/query pair maps

### 3. **Add: Schema Comparison Tooling** (modify Stage 4)
Before "auto test on migration," add a schema validation step:
- Run `sqlmesh plan` or `sqitch revert --dry-run` against the migrated DB
- Compare row counts, foreign key integrity, constraints between **legacy source snapshot** and **target state**
- This catches "migration ran but lost data" before fixture layer

### 4. **Shift: Fixture → Golden Data Diff** (modify Stage 6)
Legacy migration's hardest part is data mapping. Instead of just "comparison":
- Export legacy fixtures as CSV/JSONL with row IDs preserved
- Map each column through the transformation pipeline
- Compare source output → target columns → as... [truncated]

### [5] session_meta


