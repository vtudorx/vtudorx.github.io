---
title: "Building a Box Discrepancy Detection Agent with AWS Strands and AgentCore"
date: 2025-04-24
draft: true
description: "How we built an autonomous agent to detect packaging discrepancies at Freshful using AWS Strands SDK and Bedrock AgentCore — architecture decisions, trade-offs, and lessons from running it in production."
tags:
  - aws-bedrock
  - agentcore
  - strands-sdk
  - multi-agent
  - e-commerce
  - production
cover:
  alt: "Box Discrepancy Detection Agent architecture"
---

## The problem

[~2 paragraphs: describe the manual process that existed before, why it was costly/slow, what scale it operated at — number of SKUs, order volume, error rate]

## Why an agent, not a pipeline

[The key architectural decision: why autonomous agent vs. deterministic rule-based pipeline. What made this a good fit for agent-based approach. The uncertainty and judgment calls involved.]

## Architecture overview

[Diagram or description of: data sources → Strands agent → AgentCore → tools/Lambda → output]

### Tools defined

[List the tools the agent has access to and why each one exists]

### The MCP Gateway layer

[How MCP Gateway connects the agent to internal systems]

## Why Strands over LangGraph

[Concrete trade-offs: why Strands fit better for this use case. Not a generic comparison — specific to what we needed.]

## What runs in production

[Describe the actual deployment: EKS, Lambda, AgentCore Memory, invocation patterns]

## What went wrong (and how we fixed it)

[Honest section about failures, unexpected agent behaviors, edge cases. This is what makes the article credible.]

## Results

[Quantified outcome if possible: reduction in manual checks, accuracy, processing time]

## What I'd do differently

[Retrospective — genuine lessons]

---

*I presented a version of this system at AWS Romania [Month] 2025. [Link to slides if public]*
