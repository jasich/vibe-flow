---
name: prd
description: Interactive PRD creation through user interview - creates PRD.md for a feature
argument-hint: <feature-name>
user-invocable: true
disable-model-invocation: true
---

First, determine the feature name and plans directory:
1. Feature name: Use "$1" if provided, otherwise run `git branch --show-current` and use the current branch name
2. Plans directory: Run `echo $VIBE_FLOW_PLANS_DIR` - if empty, use ".plans" as default
3. Full path: <plans-dir>/<feature-name>/

I'm the product owner for a new feature/product. Our job is to create an initial PRD file in that plans directory that describes the first prototype phase of the feature/product. Your specific job right how is to interview me to create the PRD file. You are to make no assumptions, but to only use me and the current source code to create the PRD document. Do this as a stepped process and take it slow. Ensure that I know what will go into each section of the PRD before writing it. Only write a section at a time.
