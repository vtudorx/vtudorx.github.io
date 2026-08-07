---
title: "Cross-model KV cache transfer could make model routing cheaper"
date: 2026-08-07T20:58:28Z
draft: false
description: "A paper proposes transferring KV caches between compatible models in the same family, potentially avoiding a full prefill when routing a request to a larger model."
summary: "A paper proposes transferring KV caches between compatible models in the same family, potentially avoiding a full prefill when routing a request to a larger model."
tags:
  - llm
  - inference
  - systems
  - model routing
  - kv cache
keywords:
  - cross-model KV cache transfer
  - KV cache
  - LLM inference
  - model routing
  - prefill
---

[This paper](https://arxiv.org/html/2608.03893v1) describes a way to transfer KV caches between certain models in the same family.

That could avoid recomputing the entire prefill when routing a request to a larger model.

If validated on production workloads, the approach would make sense when the cost of prefill is higher than the cost of transforming, transferring, and loading the cache, and when the output quality is acceptable.
