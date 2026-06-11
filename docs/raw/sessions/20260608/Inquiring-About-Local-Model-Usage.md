---
title: Inquiring About Local Model Usage
session_id: 20260608_135741_13b64c
date_added: 2026-06-11
source: tui
model: odytrice/qwen3.6:5090-35b
messages: 5
tools: 2
duration_seconds: 9225
status: raw
---

# Inquiring About Local Model Usage

*Session: 20260608_135741_13b64c | Source: tui | Duration: 9225s*

## Session Metadata

- **Messages**: 5
- **Tool Calls**: 2
- **Model**: odytrice/qwen3.6:5090-35b

## Raw Messages

### [1] user

现在模型的可用usage是多少

### [2] assistant



### [3] tool

{"output": "---\nmodel:\n  default: odytrice/qwen3.6:5090-35b\n  provider: custom:local-(localhost:11434)\n  base_url: ''\nproviders: {}\nfallback_providers: []\ncredential_pool_strategies: {}\ntoolsets:\n- hermes-cli\nagent:\n  max_turns: 150\n--\n  cloud_provider: local\n  use_gateway: false\ncheckpoints:\n  enabled: false\n  max_snapshots: 20\n  max_total_size_mb: 500\n--\n    provider_filter: []\n    refresh_interval: 3600\n  guardrail:\n    guardrail_identifier: ''\n    guardrail_version: ''\n    stream_processing_mode: async\n--\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 120\n    extra_body: {}\n    download_timeout: 30\n--\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 360\n    extra_body: {}\n  compression:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 120\n    extra_body: {}\n  skills_hub:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 30\n    extra_body: {}\n  approval:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 30\n    extra_body: {}\n  mcp:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 30\n    extra_body: {}\n  title_generation:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 30\n    extra_body: {}\n  triage_specifier:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 120\n    extra_body: {}\n  kanban_decomposer:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 180\n    extra_body: {}\n  profile_describer:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 60\n    extra_body: {}\n  curator:\n    provider: auto\n    model: ''\n    base_url: ''\n    api_key: ''\n    timeout: 600\n    extra_body: {}\ndisplay:\n--\n    - model\n    - context_pct\n    - cwd\n  copy_shortcut: auto\n  tool_progress... [truncated]

### [4] tool

{"output": "HERMES_EXEC_ASK=1\nHERMES_SESSION_ID=20260608_135743_269c15\nMEMORY_PRESSURE_WATCH=/sys/fs/cgroup/user.slice/user-1000.slice/user@1000.service/app.slice/hermes-dashboard.service/memory.pressure\nHERMES_QUIET=1\nHERMES_INTERACTIVE=1\nFEISHU_HOME_CHANNEL=Hermes\nHERMES_GATEWAY_SESSION=1\nHERMES_REDACT_SECRETS=***\nHERMES_SESSION_KEY=20260608_135741_13b64c", "exit_code": 0, "error": null}

### [5] assistant

根据配置，你当前使用的是本地模型：

- **Provider**: `custom:local-(localhost:11434)` (Ollama)
- **Model**: `odytrice/qwen3.6:5090-35b`

**本地 Ollama 模型没有传统意义上的 API quota/usage 限制。** 它不走云端计费，所以不存在可用余额或使用量的概念。你能用多少取决于：

1. **GPU VRAM** — 是否能装下 35B 模型的权重和 KV cache
2. **内存/GPU 显存余量** — 同时跑的东西多不多
3. **本地推理速度** — 生成 token 的速率

如果你问的是之前用过的某个 API Provider 的用量（比如 OpenRouter、Nous Portal 等），我这边没看到任何对应的 API key 配置。你想查哪个平台的用量？
