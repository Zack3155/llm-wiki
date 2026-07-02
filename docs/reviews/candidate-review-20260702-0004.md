




















---
date_modified: 2026-07-02
title: Wiki Candidate Review Plan
topic: general
status: complete
confidence: 0.8
sources: state.db
---
# Wiki Candidate Review Plan

- Generated: 2026-07-02T07:05:02.121753+00:00
- Input: `/home/zack/.hermes/state.db`
- Review clusters: 7
- Reviewable candidates: 216
- Operational noise candidates: 0

## Claim Type Counts

- `durable_fact`: 93
- `ending_or_timeline`: 31
- `identity_or_relation`: 65
- `verification_gate`: 6
- `wiki_maintenance`: 21

## Review Clusters

### 1. 如何把微信机器人拉进群 — durable_fact
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. `truncate_message` 会加 chunk 指示符 `(1/2)` 导致总字符略多。这是正常的。修一下断言放宽：
2. `message_len_fn` 是 property，不需要调用。修一下：
3. `name` 是只读 property。修一下测试脚本：
4. **46 passed, 0 failed.** 上次失败是因为缺少 `pytest-asyncio`（已安装），代码本身没有问题。
5. 看到了。Telegram 的 `send()` 用 `for i, chunk in enumerate(chunks):` 循环发送所有 chunks。WeCom 的当前实现只发了 `chunks[0]`。 但是等等——WeCom AI Bot 的 API 是否支持连续发送多条消息？让我检查：

### 2. 韩国队2026世界杯出线几率 #2 — identity_or_relation
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. --- # PhotoModeAllowEntry — 迁移 PRD（遗留行为契约） **来源。** 本文档描述审核员端界面 `PhotoModeAllowEntry`（"PhotoMode 准入/发布初始审核"）的行为，基于遗留 React 模板 `legacy/legacy-react-templates/src/templates/PhotoModeAllowEntry/` 及其导入的共享组件清洁室导出（`legacy/legacy-react-templates/src/common/**`——videoAnchor 系列、MediaInfo、ReportInfo、ExplanatoryNotes、FilterBar、ImgWithBox、PriceCalculatorModal、CouponCheck，以及 `useQueue` / `useMusicPlayer` / `useFormhookWrapper` hooks），加上生产截图语料。以下所有 file:line 引用相对于 `legacy/legacy-react-templates/src/`。刻意未参考预先存在的 PRD/ERD、VMOK 实现、TCC/TCS 模式和任何夹具（清洁室）。 **Live 引用。** 生产界面 ground truth 是 `packages/jimu-containers/moderation-debug-container/src/test/PhotoModeAllowEntry/screenshots/` 的截图集。它仅对**渲染内容**（哪些卡/控件出现、排列和组件样式）是权威的——对字段值从来不是，因为每个具体字符串都是运行时绑定的任务数据。捕获覆盖四个生产队列家族，它们是同一模板的数据/国家分支，而非独立模式：欧盟翻译发布审核（`eu-translate-publish-*`）、英国非翻译高浏览量审核（`gb-vv-hit-*`）、德国 photomode 举报审核（`de-photomode-report-*`）和美国发布审核带可选免责声明（`us-publish-disclaimers-*`）。两个文件——`eu-translate-publish-raisehand-drawer.jpeg` 和 `eu-translate-publish-debugtools-drawer.jpeg`——描绘宿主容器 chrome 并被排除在模板界面之外。 ## §1 目的与范围 PhotoModeAllowEntry 是 TikTok Shop "photo mode" 帖子（多图像轮播带可选音频、标题/描述和锚定店铺商品）在准入/发布审核阶段的人类审核模板。审核员检查帖子的帧、其音频和 ASR 转录、创作者信息和每个锚定商品，然后做出以下三种裁决之一：批准帖子、用一个完整帖子原因拒绝（可选限定于特定违规商品）、或——仅在翻译能力队列上——当无法决定时将任务升级到本地审核员队列（templates/PhotoModeAllowEntry/App.tsx:33-201）。 模板通过带 extra-info 和 wrap-container HOC 的遗留应用工厂挂载（templates/PhotoModeAllowEntry/main.tsx:14-20）。一个生产模板服务于至少四个不同的队列家族（见 Live 引用）；它们之间的差异完全是数据、场景、国家和队列条件的，详见 §4。 范围内：三列任务体；条件 LLM 横幅；左侧基本信息/创作者信息和举报信息；中间图片区（包括翻译队列原文/翻译工具）、带 ASR 词跳转的音频播放器和锚定商品列表（含过滤/分页和欧盟价格/优惠券扩展）；右侧 Operate 面板的标准和 QA 队列两种变体；以及完整提交/回显契约（App.tsx:120-201）。范围外：每张截图中可见的 TCS 宿主 chrome（队列标题栏、"查看模式"横幅、带空格键提交的 Submit/Submit and Leave/Previous 页脚、举手和调试工具抽屉）；远程加载的 Price-Calculator 和 Coupon-Check 工具的内部逻辑（作为 federated remotes 加载——common/component/PriceCalculatorModal/index.tsx, common/component/CouponCheck/index.tsx）；以及共享提交包装器的 RCA/QA-extra-info 容器管道（common/hooks/useFormhookWrapper.tsx）。 ## §2 功能概要 - **三列工作区：** 左侧基本信息/创作者信息、中间媒体 
2. --- # ProductAppealV2 — 迁移 PRD（遗留行为契约） **来源。** 本文档描述 `ProductAppealV2`（产品申诉/召回/仿冒/更正审核队列）的审核员端界面和行为，基于遗留 React 模板 `legacy/legacy-react-templates/src/templates/ProductAppealV2/` 清洁室导出——其 `App.tsx`、左侧 `components/BaseInfo/index.tsx` + `components/BaseInfo/MultiLanguageRejectionInfo.tsx`、中间 `components/ReviewedInfo/index.tsx` 和 `components/ReviewedInfoV2/index.tsx`，以及 `typings/index.ts` 任务数据形状——以及这些文件组合的共享界面：决策控件 `legacy/legacy-react-templates/src/common/components/operateWithSecondReason/index.tsx`、hooks `common/hooks/useRejectLabels.tsx` 和 `common/hooks/useGraySwitch.ts`、商品评论卡 `common/components/product-reviews/index.tsx`、授权/未授权品牌标签 `common/components/tag/tag.tsx`、外部证据块 `common/components/appeal/ViolationCredentials.tsx`，以及意外伤害防护 `common/utils/checkShowAccidentalInjuryModal.ts`。遗留代码对行为和逐字段内容是权威的。未参考任何 VMOK 实现、先前 PRD 或先前 ERD（清洁室）；四个捕获的任务载荷仅用作生产渲染的 live ground truth，不作为契约。 **Live 引用。** 生产界面 ground truth 是 `packages/jimu-containers/moderation-debug-container/src/test/ProductAppealV2/screenshots/` 下的四张截图：`id-recall-prohibited-default.png`（单语言召回/禁售产品申诉）、`br-translation-default.png`（显示翻译/原文对的翻译队列和升级功能）、`id-counterfeit-default.png`（仿冒/IPR 申诉，其审核商品卡使用审核提示渲染器）和 `us-correction-default.png`（卖家更正列表，显示更正信息卡）。它们——配合 `auto-tester/live-capture/product-appeal-v2/{id-recall-prohibited,br-translation,id-counterfeit,us-correction}-dom.html` 下捕获的 DOM 记录—— govern 哪些卡/分区/控件渲染、其三列排列和组件样式；但它们对字段值或特定案例内容从来不是权威的（每个具体字符串——店铺 ID、类目路径、拒绝原因标签——是运行时绑定的任务数据）。 ## §1 目的与范围 ProductAppealV2 是**二次审核商品审核**的审核员工作台——卖家商品在执行行动（召回、禁售、仿冒/IPR 标记或更正要求）后进入的队列，以便人类重新决定是否维持或推翻。一个任务代表一个商品——或在多语言列表中，一个商品的几种语言变体——卖家对此提出申诉、提交更正或被路由重新审核。审核员的工作是阅读完整商品界面连同原始违规和卖家申诉/更正证据，然后返回一个裁决：**批准**（推翻/通过）、**不批准**（维持拒绝，引用具体原因），或——仅在翻译/可转让队列上——将任务**升级**到本地语言审核员当他们无法决定时。 同一模板服务于几个场景变体，仅在任务数据激活的侧卡和决策选项上有所不同：召回/禁售产品申诉、翻译队列、仿冒/IPR 申诉、卖家更正列表、欧盟商品列表申诉和多语言列表。变体从不通过模式开关选择——它是哪些任务字段被填充的自然结果（`appeal_info` 块、`correction_info` 块、`moderation_hint_info`、`translate_materials` 或可转移的 `queue_conf`、语言的 `product_list`）连同队列的 `logic_queue`、`tcs_passthrough_d

### 3. Fixing Cron Job Language Output #3 — identity_or_relation
- Review score: `0.05`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. 以下是完整翻译： --- # 计划 — 经验教训捕获：技能更新 + 门限增强（来自 TrademarkV2 会话） ## 背景 TrademarkV2 重新转换会话暴露了持久的经验教训。一个只读 Workflow（MAM 集成）挖掘出 9 条持久经验教训 → 19 项提案 → 13 项经对抗性确认，每项放置于 3 层中（运行 wf_08daf651-200）。本计划实施这些提案。用户还指示（L8）将此方法——Workflow(MAM 集成) → 分析会话经验教训 → 技能/门限提案 → 对抗验证 + 3 层 → 供审批的计划文件——成为**默认的经验教训捕获流程**，编码为一个技能。 **范围外（保持现状）**：TrademarkV2 停留在 needs-fixtures（appeal / cobranding / entity-change 没有生产 fixture——这是一个真实的数据缺口，切勿伪造）。不更改其 verify 状态。 **纪律（每个阶段）**：每次提交触及 `.agents/skills/**` 或 `scripts/lib/` → P0 技能变更纪律：提交前 ≥3-agent skill-maintenance MAM（3 层 + 四文件 + 内容通用性）；提交前台 + 顺序执行（P0 无后台 git）；保持 migration-autopilot ⇄ change-autopilot 同步。 ## 核心洞察（Phase 0 阻塞一切） improvement-audit #44（"将 baselineCount 应用到所有仅收缩列表"）完成了 2/12。手动接线其余 10 个 = 10 个内联克隆的增长守卫体 = P0 复制粘贴违规，dup-guard 标记。因此先提取共享叶，然后 10 个消费者**导入**它。 --- ## Phase 0 — 共享增长守卫辅助（1 个 MAM + 1 次提交）— **先决条件** - **新 `scripts/lib/growthGuard.mjs`** — 一个私有的 fail-closed count-vs-baseline 核心（自身**绝不能**复制粘贴 size>baseline 体），暴露为 3 种薄形状：`arrayGrowthGuard(allowlist,{arrayKey})`、`perKindGrowthGuard(allowlist,{kinds})`、`pairCountGrowthGuard(allowlist,{recordsKey})`。统一规则：非空列表/种类/记录集携带缺失/非数字的 baselineCount → ERROR（fail-closed，不能自我解除武装）；count > baseline → ERROR；否则 []。 - **重构现有 2 个实现**：`convergence-ratchet.mjs` 的 convergenceGrowthGuard + `erd-section-check.mjs` 的 checkGrowthGuard。隐藏语义变更：这将 erd-section 从**无操作当 baseline 缺失**升级为 **fail-closed**。安全（section-conformance 声明了 baselineCount），但在**同一次提交**中重写 `erd-section-growth-guard.test.mjs:75-86`（断言旧的无操作）为 fail-closed。 - 修复 `erd-section-check.mjs:382` 的过时注释。 --- ## Phase 1 — 将 10 个剩余的仅收缩列表接线到辅助（分批；每批 1 个 MAM + 1 次提交） 每个列表：添加 `baselineCount = 当前提交长度`（读取**实际**长度，永远不要使用 audit #44 的示例 `{prd:13,erd:1}`）；使其 loadAllowlist 表面 baselineCount（大多数今天丢弃它）；调用正确的 growthGuard 形状；推入现有的 exit-1 ratchet 数组；添加同置测试，具有统一的 3 项 DoD：baseline-pass / smuggled-add-FAIL / 缺失或非数字时 fail-closed。 - **1a migration-transform**： - binding-parity（baselineCount 0；在 runRatchet 中运行） - control-coverage（allNullControls.length；在 main() 中**无条件**运行，不是在 `if(!record)` 的 swe

### 4. Topic news digest · Jul 01 07:06 — verification_gate
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. I have all the data I need. Let me now compile the comprehensive daily briefing. # 📊 每日简报 | 2026年7月1日（星期三） --- ## 第一部分：AI 与科技新闻 ### 1. 联合国警告：AI 快速发展加剧全球不平等，发布负责任开发框架 联合国独立国际人工智能科学小组发布首份报告，警告 AI 的快速发展可能加剧全球不平等。报告指出，虽然全球超过十亿人每周使用 AI 工具，但"全球南方"国家的采用率远远落后于发达国家。美国和中国在领先 AI 模型开发和算力基础设施投资方面占据主导地位。报告呼吁各国发展本地 AI 基础设施（如数据中心）、提升 AI 素养、建立 AI 安全研究所。 > 📰 来源：路透社 / 卫报 | 2026-07-01 | 🔗 [Guardian](https://www.theguardian.com/technology/2026/jul/01/un-report-ai-inequality) | 置信度：0.95 ### 2. Anthropic 发布 Claude Science 科研工作台，进军药物发现 Anthropic 正式推出 Claude Science——一个统一的 AI 科研工作台，整合了多个科学数据库、工具和可视化能力。同时，Anthropic 宣布启动内部药物发现项目，专注于传统制药公司忽视的"被忽略的疾病"。生命科学负责人 Eric Kauderer-Abrams 表示，作为公益公司，Anthropic 可以选择以患者利益为优先的项目。 > 📰 来源：CNBC / Firstpost / MIT Technology Review | 2026-06-30 | 置信度：0.93 ### 3. OpenAI 发布 GPT-5.6，推出 Sol、Terra、Luna 三款模型 OpenAI 于 6 月 26 日正式发布 GPT-5.6，包含三个模型层级：Sol 在编程和网络安全性方面表现领先；Terra 将成本降低了一半；Luna 专注于推理速度。此次发布标志着 OpenAI 在 AI 模型分层策略上迈出了重要一步。 > 📰 来源：Memeburn / TechTimes | 2026-06-26 | 置信度：0.90 ### 4. Cisco 向 9 万名员工全面部署 AI 智能体 Cisco 宣布从 7 月底新财年开始，为其约 9 万名员工全面部署 AI 智能体。每位员工将获得个性化 AI 助手，系统可根据任务类型动态选择最优模型，大部分基础设施构建在公司内部以控制成本和保障数据安全。CFO Mark Patterson 透露，其财务报告的 MD&A 初稿中 80%-90% 已由 AI 完成。 > 📰 来源：Fortune | 2026-07-01 | 置信度：0.95 ### 5. 美国国会推进两党 AI 法案 一项罕见的两党 AI 立法正在国会推进中，Cognizant 等公司公开支持该法案通过。该法案旨在建立统一的 AI 监管框架，平衡创新与安全。 > 📰 来源：Fortune | 2026-07-01 | 置信度：0.88 ### 6. Google 再次遭遇 AI 人才流失，两名顶级研究人员跳槽 Anthropic 据洛杉矶时报报道，Google/Alphabet 的两名高级 AI 研究人员计划跳槽至竞争对手 Anthropic。这是 Anthropic 持续从 Google 挖角顶尖人才的最新案例，可能削弱 Google 在 Gemini 项目上的竞争力。 > 📰 来源：LA Times | 2026-06-29 | 置信度：0.90 ### 7. 中金公司推出"虚拟银行家"AI 形象"Wendy"和"Weiwei" OCBC 银行推出基于 AI 的"虚拟银行家"平台"Wendy"和"Weiwei"，两位虚拟金融顾问可处理财富管理咨询。这反映了银行业加速整合 AI 技术的趋势。 > 📰 来源：Fortune | 2026-07-01 | 置信度：0.85 ### 8. 高盛警告：杠杆股票押注高度集中于 AI 生态系统 高盛发布报告警告，当前杠杆股票押注"非常集中于 AI 生态系统"，暗示 AI 板块可能存在过度投机风险。与此同时，FactSet 预期 7 月中旬银行财报季及大型科技公司"七大巨头"财报将成关键催化剂。 > 📰 来源：Fortune / Invezz | 2026-07-01 | 置信度：0.92 --- ## 第二部分：市场与经济 ### 实时主要指数（截至美东时间 2026年7月1日 上午10点） | 指数 | 最新值 | 涨跌 | 涨跌幅 | |------|-

### 5. Topic news digest · Jun 30 22:48 — verification_gate
- Review score: `0.25`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. I now have all the data needed. Let me compile the final comprehensive report. --- # 📊 每日简报 | 2026年6月30日（周二） --- ## 第一部分：AI 与科技新闻 ### 1. Alphabet完成史上最大AI融资：847.5亿美元股权募集 Alphabet的847.5亿美元股权融资正式完成，创下科技公司史上最大规模。其中包含伯克希尔·哈撒韦100亿美元投资（以351.81美元/股认购A类股、348.20美元/股认购C类股）。CEO皮查伊表示AI企业需求已超过算力供应，2026年资本支出指引为1800-1900亿美元，2027年将大幅增加。 - **来源**: BuildFastWithAI / CNBC - **日期**: 2026年6月30日 - **置信度**: 0.95 ### 2. SpaceX股价双位数暴跌，马斯克失去全球首富地位 SpaceX在IPO后不久遭遇股价双位数下跌，原因是公司在募资850亿美元后仍寻求发行200亿美元债券，引发投资者对巨额项目成本的担忧。此次下跌使马斯克失去"全球首位万亿富翁"地位。OpenAI因此可能推迟IPO计划至明年。 - **来源**: The Guardian - **日期**: 2026年6月30日 - **置信度**: 0.92 ### 3. OpenAI发布首款自研芯片"Jalapeno"（辣椒） OpenAI与博通联合推出专为大语言模型推理优化的首款定制芯片"Jalapeno"，从设计到量产仅用时九个月。OpenAI自身AI参与了芯片设计过程，标志着AI公司从纯软件向硬件垂直整合的重大转折。 - **来源**: AI-Weekly / OpenAI官方 - **日期**: 2026年6月28-30日 - **置信度**: 0.93 ### 4. AI芯片竞争白热化：Etched估值达50亿美元 Nvidia竞争对手Etched宣布已签约10亿美元推理系统订单，TSMC已成功制造其芯片。该公司累计融资8亿美元，估值50亿美元，投资方包括Jane Street、Karpathy、Hinton、Fei-Fei Li等。Cerebras已完成今年首个AI芯片IPO，Groq刚融资6.5亿美元。 - **来源**: TechCrunch - **日期**: 2026年6月30日 - **置信度**: 0.94 ### 5. Google AI人才流失严重：五个月内六名研究员离职 Google AI编码突击队因五个月内流失六名研究人员而被迫转型至中训练阶段。DeepMind多名高管集体离职，Sergey Brin内部备忘录紧急呼吁"弥合代理执行差距"。研究员Denny Zhou已跳槽Meta超级智能实验室。 - **来源**: BuildFastWithAI / LinkedIn - **日期**: 2026年6月29-30日 - **置信度**: 0.90 ### 6. GPT-5.6限量发布，Gemini 3.5 Pro延期 OpenAI向极少数合作伙伴限量发布GPT-5.6，白宫已将其纳入政府审查流程。Google Gemini 3.5 Pro错过6月截止日期，Polymarket预测其发布概率降至97%（不会发布）。Anthropic则推进Claude Sonnet 5发布，强化代理工作流能力。 - **来源**: AI-Weekly / BuildFastWithAI - **日期**: 2026年6月29-30日 - **置信度**: 0.88 ### 7. 中国AI产业进入"政策+模型+终端"三浪交汇期 6月29日国务院常务会议审查AI发展，强调加大AI创新突破和超大规模基础设施建设。同时，中国出台对外投资新规，Meta收购中国AI公司Manus案被否决后引发合规博弈。英伟达H20芯片在中国市场遇冷，已被终止。 - **来源**: CSDN / Mondaq / AxtekIC - **日期**: 2026年6月29-30日 - **置信度**: 0.87 ### 8. GitHub Copilot计量计费引发开发者账单暴涨 GitHub Copilot从固定费率转为按量计费后，大量高级用户账单激增10-50倍，引发开发者社区强烈反弹。这被视为自2022年以来开发者工具领域最大的结构性转变。35%的受访AI从业者预计一年内AI将承担其大部分工作。 - **来源**: BuildFastWithAI - **日期**: 2026年6月30日 - **置信度**: 0.91 --- ## 第二部分：市场与经济 ### 📈 实时市场指数（2026年6月30日收盘） | 指数 | 

### 6. 如何把微信机器人拉进群 — identity_or_relation
- Review score: `0.05`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. 上次 pytest 失败是因为缺少 `pytest-asyncio`，不是代码问题。让我重新验证：

### 7. 韩国队2026世界杯出线几率 #2 — durable_fact
- Review score: `0.0`
- Recommended action: `keep_in_backlog`
- Sources: state.db

1. --- # PhotoModeAllowEntry — Render-Verify Runbook（门控源预计算） **目标：** `auto-tester/render-evidence/photo-mode-allow-entry.json`（尚不存在）；然后设置 `data.json pipeline.transform.renderEvidence` 为它。记录**不在 grandfathered 中** → 所有齿轮 live（geometryHarvest 必需，liveGeometry 必需，双边比率两边重新计算 + 0.04 硬限制，liveCrossVerify[] 矩阵必需，states[] 必需因为 23 张 live 截图 ≥ 2）。 ## Live 操作数已固定（只读） - `render-verify-setup.json` liveGeometry：viewport 1920×978，列 `sideLeft:300 / mid:1288 / sideRight:300`，columnX `4 / 316 / 1616`，blockOrder `[sideLeft,mid,sideRight]`。块：baseInformation / pictureBox / anchorList / operate。 - screenshotsRel：`src/test/PhotoModeAllowEntry/screenshots`（23 张图片）。 ## 执行陷阱（每项错过将 FAIL 门控） 1. **无 CAPTURE_CONFIGS 条目** 对于 PhotoModeAllowEntry → `render-capture --side vmok` 死亡。编写 `--config photo-mode-capture.config.json`。`columns` 键**必须**是 `sideLeft`/`mid`/`sideRight`（与 liveGeometry 相同名称）以便两边重新计算；geometry[] 组 `[["sideLeft","mid"],["sideRight"]]`（内容 vs operate；live = [0.841, 0.159]）。列必须**分区**所有采集的列（≥2 组）。 2. **新引擎 :3023** — `photomode-evidence-legacy` 必须在 harness-up 前 pinned 在 vmokRemotes.ts 中，否则 Picture 块渲染为空。harness-up：先 `source nvm.sh && nvm use`（需要 emo 在 PATH 上）；`--timeout 360`（dev build 慢）。深链接使用**数字** id：`http://localhost:8080/?template=7657543992959059719&case=<key>`。 3. **operatePanel opt-out 存在于 render-evidence 中，而非 render-verify-setup** — 门控从 render-evidence 读取 `operatePanel`。设置 `operatePanel.subReasons:false` + 一个 `reason`（扁平单选 Radio.Group，无 parent_code → 无 sub-reason 级）以豁免 reject-subreason 状态。**不要**设置 `operatePanel.decision:false`（此模板有拒绝决策界面）。批准是**隐式的**（无批准控件；默认渲染 = 批准状态）→ operatePanelStates `approve` 使用默认渲染截图。 4. **host-chrome controlKeys 导致 VMOK 中缺失硬 FAIL**（`controlInventoryDiffError` 无偏差逃逸）。`raisehand-icon-button` + `debug-tools-icon-button` 是平台 HOC chrome（ERD §2 差距），非模板界面——render-verify 前，从 live `*-interactions.json` 中那两个条目的 `controlKey` 字段移除（保留 label/note 作为文档；这些文件在 auto-tester/live-capture 中，非保存夹具案例，所以可编辑）。在 render-evidence gaps[] 中记录解决的 host-chrome 故意差距。验证这不触发 `live-capture-completene

## Summary

## Summary

