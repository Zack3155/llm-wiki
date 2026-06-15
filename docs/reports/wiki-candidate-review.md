# Wiki Candidate Review Plan

- Generated: 2026-06-15T00:50:00.592921+00:00
- Input: `/home/zack/.hermes/state.db`
- Review clusters: 5

## Claim Type Counts

- `durable_fact`: 70
- `ending_or_timeline`: 181
- `identity_or_relation`: 434
- `verification_gate`: 78
- `wiki_maintenance`: 237

## Review Clusters

### 1. 探讨诸界末日在线结局 #82 — wiki_maintenance
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. {"output": "acc44b0 docs: refresh wiki health report\n957ac38 docs: add wiki health report\nbec91a6 Wiki Linter Auto-Commit: 2026-06-14 17:29:16", "exit_code": 0, "error": null}
2. {"output": "[main acc44b0] docs: refresh wiki health report\n 2 files changed, 2 insertions(+), 2 deletions(-)", "exit_code": 0, "error": null}
3. {"output": "[main 957ac38] docs: add wiki health report\n 2 files changed, 2 insertions(+), 2 deletions(-)", "exit_code": 0, "error": null}
4. {"output": "BUILD_EXIT=0\n\n │ ⚠ Warning from the Material for MkDocs team\n │\n │ MkDocs 2.0, the underlying framework of Material for MkDocs,\n │ will introduce backward-incompatible changes, including:\n │\n │ × All plugins will stop working – the plugin system has been removed\n │ × All theme overrides will break – the theming system has been rewritten\n │ × No migration path exists – existing projects cannot be upgraded\n │ × Closed contribution model – community members can't report bugs\n │ × Currently unlicensed – unsuitable for production use\n │\n │ Our full analysis:\n │\n │ https://squidfunk.github.io/mkdocs-material/blog/2026/02/18/mkdocs-2.0/\n\nINFO - Cleaning site directory\nINFO - Building documentation to directory: /home/zack/wiki/site\nINFO - Documentation built in 0.19 seconds\n---GIT---", "exit_code": 0, "error": null}
5. {"output": "LINT_EXIT=0\n✅ 24 pages | fixes=2 err=0 warn=0 | report=/tmp/wiki_lint_report.json\n{\n \"timestamp\": \"2026-06-14T17:29:16.536964\",\n \"pages_scanned\": 24,\n \"auto_fixed\": [\n \"✅ Index unchanged: /home/zack/wiki/docs/index.md\",\n \"✅ Git committed lint changes: docs/reports/wiki-health.json | 2 +-\\n docs/reports/wiki-health.md | 14 +-------------\\n 2 files changed, 2 insertions(+), 14 deletions(-)\"\n ],\n \"auto_fix_count\": 2,\n \"remaining_errors\": [],\n \"remaining_warnings\": []\n}---GIT---", "exit_code": 0, "error": null}

### 2. 探讨诸界末日在线结局 #82 — ending_or_timeline
- Review score: `0.0`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. {"todos": [{"id": "1", "content": "Phase 0：将 wiki-lint.py 改为通用 Wiki 规则并修复缺失元数据盲区", "status": "completed"}, {"id": "2", "content": "Phase 0：补齐 zhu-jie-mo-ri-ending.md 元数据并运行 linter/build/负测", "status": "completed"}, {"id": "3", "content": "Phase 1：实现通用 raw/session 候选知识提取器并验证", "status": "completed"}, {"id": "4", "content": "Phase 2：改造 wiki_sync_hook.py 支持通用 topic/entity 匹配并验证 dry-run", "status": "completed"}, {"id": "5", "content": "Phase 3：新增通用 Wiki health report 并验证", "status": "completed"}, {"id": "6", "content": "Phase 4：补充 MkDocs 版本锁定/兼容检查与验证", "status": "completed"}, {"id": "7", "content": "Phase 5：更新 llm-wiki 规则为通用 Wiki 表述并验证 skill/docs", "status": "completed"}], "summary": {"total": 7, "pending": 0, "in_progress": 0, "completed": 7, "cancelled": 0}}
2. {"output": "{\"ok\": true, \"health\": \"ok\", \"json\": \"/home/zack/wiki/docs/reports/wiki-health.json\", \"md\": \"/home/zack/wiki/docs/reports/wiki-health.md\"}\nFINAL_EXIT=0\n✅ 24 pages | fixes=1 err=0 warn=0 | report=/tmp/wiki_lint_report.json\n{\n \"timestamp\": \"2026-06-14T17:30:27.793731\",\n \"pages_scanned\": 24,\n \"auto_fixed\": [\n \"✅ Index unchanged: /home/zack/wiki/docs/index.md\"\n ],\n \"auto_fix_count\": 1,\n \"remaining_errors\": [],\n \"remaining_warnings\": []\n}---BUILD---\n\n │ ⚠ Warning from the Material for MkDocs team\n │\n │ MkDocs 2.0, the underlying framework of Material for MkDocs,\n │ will introduce backward-incompatible changes, including:\n │\n │ × All plugins will stop working – the plugin system has been removed\n │ × All theme overrides will break – the theming system has been rewritten\n │ × No migration path exists – existing projects cannot be upgraded\n │ × Closed contribution model – community members can't report bugs\n │ × Currently unlicensed – unsuitable for production use\n │\n │ Our full analysis:\n │\n │ https://squidfunk.github.io/mkdocs-material/blog/2026/02/18/mkdocs-2.0/\n\nINFO - Cleaning site directory\nINFO - Building documentation to directory: /home/zack/wiki/site\nINFO - Documentation built in 0.19 seconds\n---GIT---\n M docs/reports/wiki-health.json\n M docs/reports/wiki-health.md", "exit_code": 0, "error": null}

### 3. 探讨诸界末日在线结局 #82 — durable_fact
- Review score: `0.0`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. 进行你的下一步计划，还有你提到的候选提取器，health report都是自动运行的吗

### 4. 探讨诸界末日在线结局 #82 — identity_or_relation
- Review score: `0.536`
- Recommended action: `review_for_wiki_write`
- Sources: state.db

1. ✅ 已按“一步步逐项改进 + 每步验证”的方式完成第一批落地。 本轮重点：**把 Wiki 规则从 `novel-lore` 专用扩展到通用 Wiki**，同时补齐 linter、候选提取、search→wiki hook、health report、MkDocs 兼容检查。 --- ## 本轮已完成 ### 1. 通用 Wiki Linter 规则 已改： ```text /home/zack/.hermes/scripts/wiki-lint.py ``` 现在规则不再只服务 `novel-lore`，而是默认扫描： ```text /home/zack/wiki/docs/topics/* ``` 新增硬拦截： ```text 所有公开页面必须有 status 所有非索引页面必须有 confidence 所有非索引页面必须有 sources complete 页面 confidence < 0.8 会报错 missing status 不再绕过检查 ``` 验证结果： ```text python3 -m py_compile /home/zack/.hermes/scripts/wiki-lint.py ✅ 通过 ``` 当前 Wiki lint： ```text ✅ 24 pages | fixes=1 err=0 warn=0 | report=/tmp/wiki_lint_report.json ``` 负测也验证过： ```text 低置信度 complete 页面会被 linter 报出 缺失 status/confidence 会被自动修复或拦截 ``` --- ### 2. `zhu-jie-mo-ri-ending.md` 元数据补齐 已补： ```yaml status: stub confidence: 0.00 sources: - local wiki date_modified: 2026-06-14 ``` 注意：我没有把它标成 `complete`，因为终局分析还需要更强证据链复核。 验证： ```text wiki-lint.py err=0 warn=0 mkdocs build --strict EXIT=0 ``` --- ### 3. 新增通用 raw/session 候选知识提取器 新增： ```text /home/zack/.hermes/scripts/wiki-candidate-extractor.py ``` 功能： ```text 扫描 state.db 扫描 docs/raw/sessions 提取 durable knowledge candidates 输出 JSON 不直接写 Wiki ``` 验证结果： ```text state_db_candidates: 392 raw_session_candidates: 517 total_candidates: 884 EXIT=0 ``` 命令： ```bash python3 /home/zack/.hermes/scripts/wiki-candidate-extractor.py \ --out /tmp/wiki_candidates_test.json \ --state-limit 10 \ --raw-limit 20 ``` --- ### 4. Search → Wiki Hook 改为通用 topic/entity 匹配 已改： ```text /home/zack/.hermes/scripts/wiki_sync_hook.py ``` 现在支持： ```bash --wiki-root --topic-dir --search-report --dry-run ``` 默认不再只匹配 `novel-lore`，而是： ```text 先查 ENTITY_PATTERNS 没有命中则扫描 docs/topics/* 可用 --topic-dir 限制范围 ``` 验证 dry-run： ```text EXIT=0 engine: test results_count: 1 pages_scanned: 1 agent_action_required: true ``` 说明：现在 hook 可以识别相关页面和新增实体短语，但不会自动写事实，仍保留人工/LLM 审核。 --- ### 5. 新增通用 Wiki Health Report 新增： ```text /home/zack/.hermes/scripts/wiki-health.py ``` 生成： ```text /home/zack/wiki/docs/reports/wiki-health.json /home/za

### 5. 探讨诸界末日在线结局 #82 — verification_gate
- Review score: `0.0`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. {"output": "{\"ok\": true, \"health\": \"ok\", \"json\": \"/home/zack/wiki/docs/reports/wiki-health.json\", \"md\": \"/home/zack/wiki/docs/reports/wiki-health.md\"}\nHEALTH_EXIT=0\n{\n \"health\": \"ok\",\n \"counts\": {\n \"public_pages\": 24,\n \"raw_sessions_total\": 114,\n \"raw_sessions_processed\": 11,\n \"raw_sessions_unprocessed\": 103\n },\n \"issues\": {\n \"missing_status\": 0,\n \"missing_confidence\": 0,\n \"missing_sources\": 0,\n \"low_confidence_complete\": 0,\n \"high_confidence_needs_more_sources\": 0\n }\n}\n M docs/reports/wiki-health.json\n M docs/reports/wiki-health.md", "exit_code": 0, "error": null}
