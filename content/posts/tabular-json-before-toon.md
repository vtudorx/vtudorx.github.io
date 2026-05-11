---
title: "Tabular JSON for LLM agents before TOON"
date: 2026-05-11T21:32:41+03:00
draft: false
description: "A compact tabular JSON pattern for reducing repeated keys in agentic workflows without replacing systems that already output JSON."
summary: "A compact tabular JSON pattern for reducing repeated keys in agentic workflows without replacing systems that already output JSON."
tags:
  - llm
  - llm agents
  - json
  - toon
  - structured data
keywords:
  - TOON format
  - tabular JSON
  - LLM agents
  - JSON for LLMs
  - token-efficient JSON
---

Many posts recommend the [TOON format](https://toonformat.dev/) as a way to reduce token use in agentic workflows. TOON is built for compact, LLM-facing data.

The problem is that agents I build often consume data from existing systems: APIs, databases, logs, exports, and internal services that already speak JSON.

The shape I usually use is tabular JSON:

```json
{
  "header": ["key_one", "key_two"],
  "rows": [
    [1, 2],
    [3, 4]
  ]
}
```

I prefer this format because it removes repeated object keys from every row. The schema is seen only once by the model and attention can stay on the values.

## What I gain

- Systems still output JSON, with no major transforms.
- LLM attention stays on the actual data.
- Migration costs stay low.

TOON will probably be a better fit when we build systems purely for AI, where humans have minimal intervention. Until then, tabular JSON gives me most of the benefit without the migration cost.
