# Wiki Candidate Review Plan

- Generated: 2026-06-15T16:12:12.336922+00:00
- Input: `/home/zack/.hermes/state.db`
- Review clusters: 1

## Claim Type Counts

- `durable_fact`: 364
- `ending_or_timeline`: 50
- `identity_or_relation`: 279
- `verification_gate`: 126
- `wiki_maintenance`: 181

## Review Clusters

### 1. 探讨诸界末日在线结局 #50 — wiki_maintenance
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: raw_session

1. ## 🔍 自动更新 Wiki 的机制去哪了？
2. | `docs/log.md` 活动日志 | 已有自动写入 | 但 MkDocs 会把日志里的 `[Title](path.md)` 误判成死链，需要 escape |
3. ✅ Index unchanged: /home/zack/wiki/docs/index.md
4. ✅ Generated /home/zack/wiki/docs/index.md
5. - 自动扫描：`~/wiki/docs/topics/**/*.md`
