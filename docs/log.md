---
title: Wiki 变更日志
name: wiki-change-log
topic: general
status: generated
confidence: 0.80
sources:
  - 本地 Wiki 变更日志
  - MkDocs 构建验证
date_added: 2026-06-13
date_modified: 2026-06-15
last_modified: 2026-06-15
---

## 概述

本文件记录 Wiki 页面新增、索引更新、自动归档与验证结果。它是变更日志与运维审计记录，不是 lore 结论本身；其中涉及 lore 的条目仍以对应实体页、来源页和验证脚本为准。

# Wiki 变更日志

## 2026-06-20 — Wiki Knowledge Auto-Filer（3小时窗口）

### 新建页面: `全球高武/yuandi-concept.md`
- Topic: `源地` 概念档案（《全球高武》）
- Core finding: 源地不是普通地名，而是承载皇者道果、裂缝与本源循环的旧三界核心空间；需区分天帝制造的旧源地/第一源地三十六重天与方平的第二源地。
- Multi-source verification: lore_search_optimizer + layered_search SearXNG；百度百科「天帝」/「方平」/「全球高武」交叉摘要；第1409章 WebNovel 摘要与第1432章潇湘书院正文摘要。
- 置信度: 0.95
- 涉及页面: `yuandi-concept.md`（new）、`_index.md`（updated）、`zhongzi-concept.md`/`tian-di-profile.md`/`fang-ping-profile.md`（参见链接更新）

## 2026-06-14 — 自动归档同步 (33:00 UTC / ~03:00 next cycle)

### 新建页面: `novel-lore/yong-mie-zhi-wang-profile.md`
- Topic: "永灭之王 / 魔躯" identity in 《诸界末日在线》
- **Core finding**: "永灭之王" 并非独立实体 — it is the 自称尊号为 **魔躯**, which 源于因果律奥秘. 完整自我-title: "诸界的圣律之主，混沌的驾驭者，永灭之王".
- Identity chain: 魔躯 = 诞生于因果律奥秘之中的未知之物 → 报出尊号"永灭之王" → ≠ 顾青山, ≠ 邪魔之主, ≠ 邪性之魔 (目标不同、存在矛盾)
- **Key differentiator**: 多个名称相似的实体经确认各自独立 per Chapter 322 text
- Original text evidence: Chapter 322《永灭之王》(序列智能分析 + 魔躯自报尊号 + 顾青山确认)
- Multi-source cross-verification: layered_search SearXNG L1 ≥8 independent sources (起点中文, UU看书, 黄金屋中文网 chapter titles confirm "第三百二十二章永灭之王"), Zhihu analysis post ("永灭之王为首...击碎六道")
- 置信度: 0.88
− 涉及页面: yong-mie-zhi-wang-profile.md (new), _index.md (updated)

## 2026-06-14 — 自动归档同步 (21:00 local, cron #75)

### 新建页面: `novel-lore/wu-zhuan-zhi-di-concept.md`
- Topic: "无转之地" (Land Without Reincarnation) concept in 《诸界末日在线》
- **Core finding**: 无转之地 是一个高危棺材封印空间 bound to the six-path reincarnation system, containing those who sacrificed for six paths and cannot reincarnate
- Identity chain: Six Path mechanism → 触发无转之地 → 无限棺海中收容 无法转世的献祭者 + sealed beings (e.g., Wang Lingxiu) + former Heavenly Emperor's sealed body
- **Key differentiator**: 天之法·无转万魔棺 ≠ 无转之地 (进入技术与空间本身的区分); 前代天帝/永恒夺念者 绑定于此但不等于此地
- Original text evidence: Ch.286《魔躯之秘》, Ch.304《魔躯的身份！》, Ch.305《寻救！》, Ch.306+ (demon guardian, life-death gate)
- Multi-source cross-verification: layered_search SearXNG L1 ≥8 independent sources, Baidu Baike "永恒夺念者", Zhihu analysis, Douyin Baike, QQ Reader excerpts
- 置信度: 0.88
- Research gaps: 创造者身份, 正式定义 "无转", 沉睡实体身份, 终局命运, 与洪荒毁灭的完整历史
− 涉及页面: wu-zhuan-zhi-di-concept.md (new), _index.md (updated)

## 2026-06-14 — 自动归档同步 (15:00 UTC)

### 新建页面: `novel-lore/qingtongzhizhu-profile.md`
- Topic: "青铜之主" (Bronze Lord) identity in 《诸界末日在线》
- **Core finding**: 青铜之主 并非单一实体/真名, but a 战争级 "万生" existences 由墟墓孕育、受控于 "一人万生之术"
- Identity chain: 一人万生之术 (来自虚空的至高掌控者) → controls Bronze Lords / 傀儡文明 / 序列单元 → used by 魔皇纪元文明 → serves 魔皇纪元eror (魔皇) resurrection
- **Key differentiator**: 魔皇 ≠ 青铜之主 (魔皇纪元eror is the master; Bronze Lords are 受控的战争单元)
- Original text evidence: Chapters 230《否决！》, 269《高维之地！》, 270《战争序列的真相》, 276《魔皇纪元》, 287《纪元与术》 + QQ Reader Ch.1994 public excerpt
- Multi-source cross-verification: douyin baike (一人万生之术操控所有青铜之主等"万生"), hetubook/czbooks/quanben chapter text alignment, PTT CFantasy, Zhihu analysis
- 置信度: 0.84
− 涉及页面: qingtongzhizhu-profile.md (new), _index.md (updated)

## 2026-06-14 — 自动归档同步 (03:00 local)

### 新建页面: `novel-lore/chaos-concept.md`
- Topic: "混沌" (Chaos) foundational concept in 《诸界末日在线》
- Core definition: 众生最终之术 = 序列之王 = 诸界末日在线 = 顾青山的真身
- Original text evidence from Chapters 119《可怜的你》, 120《和平与……》with multi-source verification (飘天文学/和图书原文 + 知乎考据 + 百度百科 + layered_search)
- 置信度: 0.93
− 涉及页面: chaos-concept.md (new), _index.md (updated)

## 2026-06-13 — 自动归档同步 (12:00 UTC)

- **新建页面**: `wan-jie-fu-shi-zhe-profile.md` — 万界俯视者/真古之魔角色档案
  - Source: session 20260612_112944_184faa (诸界末日在线结局探讨 #61)
- 引用章节: ced: 658, 659, 2225
  - 置信度: 0.75（needs-more-sources: 更深层次本质未在原文中揭示）
- 索引已更新: ed**: `_index.md` — added new entry to role profiles table
- 代码检查与构建结果记录在下方工具调用中。

## 2026-06-13 — 自动归档（定时任务）

### 新建页面: `novel-lore/sequence-system-concept.md`
- Topic: "序列" (Sequence System) core concept in 《诸界末日在线》
- 定义五个序列层级: 魔王 → 邪魔 → 众生 → 六道轮回(终极兵器) → 混沌最高序列
- 原文证据出自第 31、33、61/533 章；经百度百科、多部小说来源 via layered_search 交叉验证ed_search
- 置信度: 0.91
− 涉及页面: sequence-system-concept.md (new), _index.md (updated)

### 验证
− 代码检查与构建结果记录在下方工具调用中。

## 2026-06-13 — 自动归档 (cron, ~07:00 UTC+8)

### 新建页面: `novel-lore/xukong-san-shu-comparison.md`
- Topic: "虚空三术与众生同调" concept comparison — 澄清读者常见混淆 between 众生同调 (身份调和奥秘) and 一人万生之术 (战略虚空术i-Art)
- 来源: Chapter 135《取剑》, Chapter 250《一人与三术！》, Chapter 252《固定的历史》, Chapter 596《意外的真相！》 (经 layered_search 确认 SearXNG — UUKanshu, hjwzw, tianyabook); Baidu Baike; Douyin Baike; Zhihu analysis; PTT CFantasy live discussion
- 置信度: 0.88 (9 independent source hits across text sites + encyclopedias + reader analysis)
− 涉及页面: xukong-san-shu-comparison.md (new), gu-qing-shan-profile.md (交叉引用已添加), xiemozhizhu-profile.md (交叉引用已添加), _index.md (entry added)

### 验证
− 代码检查与构建结果记录在下方工具调用中。

## 2026-06-16 — 自动归档 (cron, ~10:40 UTC+8)

### 新专题: `quanqiu-gaowu/` — 《全球高武》考据专题

#### 新建页面: `quanqiu-gaowu/fang-ping-profile.md`
- Topic: 方平（男主角）真实身份核查
- Key finding: **方平不是任何天帝转世**；战天帝转世是王金洋（百度百科明确）。方平来自投影世界/前世地球，被三帝通过系统布局为后手。终局中成为"阴间主宰"，与苍猫共同维持阴阳两界平衡
- 来源: 百度百科"方平"/"全球高武"/"战天帝"/"斗天帝"词条；第1432章终章原文 (bidutuijian.com)；SearXNG layered search ≥5 independent hits
- 置信度: 0.88

#### 新建页面: `quanqiu-gaowu/zhongzi-concept.md`
- Topic: "种子"概念 — 非人物也非物品，是三界生命起源与能量循环核心（世界级规则）
- Key finding: 苍猫吞下旧种子成为阳间主宰，方平成阴间主宰；区分世界种子与气血种子/生命种子等同名异义概念
- 来源: 百度百科"全球高武"全文 keyword extraction (55,881 chars)；终章原文；SearXNG layered search multi-engine cross-ref
- 置信度: 0.90

#### 新建页面: `quanqiu-gaowu/_index.md`
− 专题索引含状态/置信度表格，交叉链接至小说考据索引与通用索引

### 验证
− 代码检查与构建结果记录在下方工具调用中。
2026-06-18 12:04:55 [Wiki自动归档] 新建页面: 斗天帝 · 角色档案 (global-gao-wu/dou-tian-di-profile.md) — verified via Baidu Baike + SearXNG layered search. Updated _index.md. Lint: clean (36 pages, 2 fixes). Build: clean.

## 2026-06-19 — 自动归档同步 (3-hour Auto-Filer)

### 新建页面: `quanqiu-gaowu/diku-yuhaishan-concept.md`
- Topic: 地窟 / 地界、御海山、王战之地与界域之地的结构关系
- Key finding: 地窟/地界是与人界相对的巨大异界世界；御海山是地窟/地界中心大陆；王战之地是御海山中心禁地，与二王传说和人类武者遗迹有关，但起源细节仍未完全确定
- Sources: 百科/抖音百科《全球高武》条目、起点中文资源站镇星城资料、第560章《王战之地》、知乎整理、Dcard 读者梳理
- 置信度: 0.79；状态: `needs-more-sources`
− 涉及页面: diku-yuhaishan-concept.md (new), _index.md (updated)

### 验证
− 待运行: `wiki-lint.py`, `mkdocs build --strict`, `wiki-health.py`, `wiki-content-audit.py`

