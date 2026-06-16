---



title: 站点身份与新 topic 边界
name: site-identity-topic-boundary
topic: general
status: complete
confidence: 0.90
sources:
  - 本地 Wiki 结构审计
  - mkdocs.yml 站点配置审计
  - 站点身份通用化讨论
tags:
  - site-identity
  - general
  - topic-boundary
date_added: 2026-06-16
date_modified: 2026-06-16



---




## Summary

本站身份应从“诸界末日在线 lore 站”提升为“LLM Wiki · 通用知识库”：《诸界末日在线》是当前首个内容 corpus，但不是站点边界；脚本、健康报告和候选分类必须默认跨 `docs/topics/*` 工作，只在明确需要时执行 lore 专属校验。

# 站点身份与新 topic 边界

## 结论

- **站点身份**：`LLM Wiki · 通用知识库`。
- **当前内容主体**：`《诸界末日在线》` 考据，作为 `novel-lore` topic 下的首个 corpus。
- **系统边界**：站点支持任意 topic；`novel-lore` 是内容 topic，不是整个 Wiki 的身份边界。
- **运维原则**：通用脚本、健康检查、索引生成、候选分类不得把未知内容默认塞进 `novel-lore`。

## 当前 topic 边界

| Topic / 目录 | 用途 | 写入规则 | 是否公开 |
|---|---|---|---|
| `general` | 站点身份、跨 topic 规则、治理说明 | 只写跨 topic、站点级、可复用规则 | 是 |
| `novel-lore` | 《诸界末日在线》角色、概念、终局、身份冲突 | 必须有来源、置信度、证据边界；冲突保留 `needs-more-sources` | 是 |
| `wiki-ops` | Hermes/Wiki 自动化、脚本、cron、搜索路由、部署记录 | 写运维事实与可复用流程；不写小说 lore | 是，若后续建立 |
| `raw/sessions` | 原始会话 dump | 不可变源文件；只由 extractor 读取，不直接作为知识结论 | 否 |
| `reports` | 生成报告和审计产物 | 本地 artifacts；不得当成 Git-tracked 知识页 | 否 |
| `archive` | 删除/归档记录 | 由归档脚本维护；MkDocs 排除 | 否 |
| `site` | MkDocs 构建输出 | 生成目录；不得手写知识内容 | 否 |

## 新 topic 判定规则

1. 内容讨论站点身份、脚本行为、cron、搜索路由、MkDocs、健康检查 → 进入 `general` 或 `wiki-ops`，不得进入 `novel-lore`。
2. 内容讨论小说角色、概念、终局、身份冲突、原文证据 → 进入 `novel-lore`。
3. 原始会话、工具输出、迁移统计、token 消耗 → 留在 `raw/sessions` 或由 extractor 转为候选；不得直接作为 lore 页面。
4. 生成报告、lint/build 输出、browser smoke 输出 → 留在 `reports` 或 `/tmp`；不得污染公开知识页。
5. 新领域出现时，先建 topic 目录、`_index.md` 和根索引链接，再写具体页面；不得为了复用现有目录而把新领域硬塞进 `novel-lore`。

## 脚本通用化约束

- 站点级脚本默认扫描 `docs/topics/*`，而不是只扫描 `docs/topics/novel-lore`。
- `wiki-health.py` 的通用健康项必须与 lore 专属 guard 分离；`xumu-concept.md` 只能作为 `novel-lore` 内部校验。
- `wiki-browser-smoke.py` 的默认检查路径应从 topic 目录动态派生，并保留少量 lore 压力页。
- `wiki-candidate-apply.py` 不得用“角色”“结局”“身份”等泛词单独推断 `novel-lore`；只有小说标题或强实体词才能触发 `novel-lore`。
- `dynamic-index-generator.py` 生成根索引时必须保持通用站点身份，不能把首页文案写成某一部小说的专属首页。

## 已落地改动

- `mkdocs.yml` 的 `site_name` 改为通用站点名。
- 根首页改为通用知识库身份，并把《诸界末日在线》列为当前主内容 corpus。
- 新增 `general` topic 与站点身份页面。
- 通用脚本保留 lore 专属校验，但不再把站点身份绑定到 `novel-lore`。

## See also


Confidence Score: 0.90
Sources:
- 本地 Wiki 结构审计
- mkdocs.yml 站点配置审计
- 站点身份通用化讨论
