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

A practical use case would be a multi-turn agent in which model cascades are standard for cost optimization. The agent could use a smaller model for routine turns and hand the session off to a larger model when a more capable model is needed. Under certain compatibility constraints, the larger model could reuse a transformed version of the existing KV cache instead of recomputing the entire accumulated context.

This means that handoff sessions may not need to compute the entire accumulated context again, with only a small penalty in quality. The actual quality impact would need to be validated for the specific model pair and workload.

If validated on production workloads, the approach would make sense when the cost of prefill is higher than the cost of transforming, transferring, and loading the cache, and when the output quality is acceptable.
