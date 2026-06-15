# Wiki Candidate Extractor Report

- Generated: 2026-06-15T16:12:12.306472+00:00
- State DB: `/home/zack/.hermes/state.db`
- Raw sessions: `/home/zack/wiki/docs/raw/sessions`

## Counts

- State DB candidates: 0
- Raw session candidates: 3975
- Total candidates: 3975

## By Claim Type

- `durable_fact`: 1545
- `ending_or_timeline`: 318
- `identity_or_relation`: 756
- `verification_gate`: 212
- `wiki_maintenance`: 1144

## Latest Candidates

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:9
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: ## 🔍 自动更新 Wiki 的机制去哪了？

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:8
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: | `docs/log.md` 活动日志 | 已有自动写入 | 但 MkDocs 会把日志里的 `[Title](path.md)` 误判成死链，需要 escape |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:7
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: ✅ Index unchanged: /home/zack/wiki/docs/index.md

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:6
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: ✅ Generated /home/zack/wiki/docs/index.md

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:5
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: - 自动扫描：`~/wiki/docs/topics/**/*.md`

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:4
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 你说得对——之前 `docs/index.md` 是**手写硬编码表格**，所以只列了 4 篇，新增的人物档案不会自动出现。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:3
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `identity_or_relation`
- Snippet: - 需要区分剧情考据中的相近身份：真正邪魔之主、柳平扮演的邪魔首领、独孤峰、幕/冰封尸体。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:21
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 每次 Wiki 更新后自动刷新 `docs/index.md`

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:20
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 现在它硬编码的是 `~/projects/wiki`，但实际 Wiki 在 `~/wiki`

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:2
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: - Wiki 更新要求“一并更新”所有相关页面，不只看明显命中文件。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:19
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 2. **让 `knowledge-synthesizer.py` 支持当前 Wiki 路径**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:18
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 让 `session-to-wiki.py` 或 `extract-all-sessions.py` 自动把新会话写入 `~/projects/wiki/raw/sessions/`

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:17
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 把自动更新链路补全成真正的闭环：

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:16
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 但它依赖 `~/projects/wiki/raw/sessions/` 里有新会话文件。当前目录为空，所以不会触发。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:15
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 3. **真正的自动写入器是 `knowledge-synthesizer.py`**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:14
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `identity_or_relation`
- Snippet: 它**不是**直接覆盖 Wiki 页面的写入器。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:13
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: 2. **`wiki_sync_hook.py` 只做“标记”，不直接改页面**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:12
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `durable_fact`
- Snippet: 1. **raw sessions 目录是空的**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:11
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: | `wiki_sync_hook.py` | ✅ 存在 | 扫描矛盾、写日志 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:10
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `durable_fact`
- Snippet: 它**没有消失**，但当前状态是“半残”：

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-50.md:1
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #50
- Type: `wiki_maintenance`
- Snippet: #1 **Wiki Audit + Delta Check** `8A436B` 2 min | 7 msgs | 0 tools | 516,038 | 18,519 | $0.0447 ✅ (fully cached) |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:9
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: 根据 PTT 实况原文：**"如果照炼狱艺术家的结局，巨大黑甲尸体的由来是柳平抓住了一个机会跟谢道灵杀了一邪魔boss的尸体，且用黑甲给自己捏了一个独孤将军的身份（可能包含他是独孤琼的爸爸）。"**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:85
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `verification_gate`
- Confidence hint: 1.0
- Snippet: **Confidence Score: 1.0 | Sources: Live wiki update + lint verification**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:84
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: **Wiki Lint** | ✅ 12 pages, fixes=1, err=0, warn=0 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:83
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **bingfengzhishi-profile.md** | 关系图谱新增独孤峰，补充 5 个交叉引用链接 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:82
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: **wan-shen-nu-di-profile.md** | 修复死链，更新 See also 指向正确文件 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:81
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **xie-dao-ling-profile.md** | 修复 4 个死链，补充与柳平合作杀死邪魔 BOSS 的关系 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:80
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: **honghuang-liudao-concept.md** | 清理重复行（3×重复），更新 See also 链接 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:8
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **核心答案**：巨大黑甲尸体是柳平利用一个被杀死的邪魔 BOSS 的尸体和黑甲，创造出来的"独孤将军/独孤峰"身份。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:79
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **_index.md** | 更新独孤峰主题描述，新增交叉引用说明（幕≠邪魔之主、柳平≠冰封尸体、独孤峰=柳平身份） |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:78
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **liu-ping-profile.md** | 补充三大问题完整解析（柳平为何扮演邪魔首领、巨大黑甲尸体由来、师徒关系） |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:77
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **zhu-jie-mo-ri-ending.md** | 更新终局考据分歧点，新增独孤峰身份修正说明 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:76
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **xiemozhizhu-profile.md** | 新增柳平/独孤峰身份架构，区分真正邪魔之主 vs 柳平扮演的邪魔首领 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:75
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **du-ge-feng-profile.md** | 独孤峰身份判定修正：确认=柳平捏造身份，旧说法标记 Outdated |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:74
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: ### 📝 更新文件清单

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:73
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: ## ✅ 已全面更新 Wiki

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:72
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `verification_gate`
- Confidence hint: 1.0
- Snippet: **Confidence Score: 1.0 | Sources: Live wiki update + lint verification**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:71
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: **Wiki Lint** | ✅ 12 pages, fixes=3, err=0, warn=0 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:70
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **zhu-jie-mo-ri-ending.md** | 更新终局考据分歧点，新增独孤峰身份修正说明，补充柳平档案交叉引用 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:7
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `durable_fact`
- Snippet: 这意味着柳平并非真正的邪魔首领，而是一个**演员**——他在时间另一面按照既定剧本扮演这个角色，目的是确保历史按照正确轨道发展。

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:69
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **xiemozhizhu-profile.md** | 新增柳平/独孤峰身份架构，明确区分**真正邪魔之主 vs 柳平扮演的邪魔首领**，补充邪魔之主被混沌力量击败的细节 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:68
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `identity_or_relation`
- Snippet: **du-ge-feng-profile.md** | 修正独孤峰身份判定：从"双说并存"改为**确认=柳平扮演的身份**，旧说法标记为 Outdated |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:67
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: | 文件 | 更新内容 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:66
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: ### 📝 更新内容

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:65
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: ## ✅ Wiki 已根据对话信息更新

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:64
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `verification_gate`
- Confidence hint: 1.0
- Snippet: **Confidence Score: 1.0 | Sources: Live process check + dual HTTP verification (localhost + 0.0.0.0)**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:63
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `verification_gate`
- Confidence hint: 1.0
- Snippet: **Confidence Score: 1.0 | Sources: Live process check + HTTP 200 verification**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:62
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `verification_gate`
- Confidence hint: 1.0
- Snippet: **Confidence Score: 1.0 | Sources: Live execution of `/home/zack/.local/bin/stack-check.sh`**

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:61
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: Wiki preview (8081) | ✅ up, reachable on 100.66.84.102 |

### raw:wiki/docs/raw/sessions/20260611/探讨诸界末日在线结局-49.md:60
- Source: `raw_session`
- Session: 探讨诸界末日在线结局 #49
- Type: `wiki_maintenance`
- Snippet: ### 📝 最近 Wiki 提交
