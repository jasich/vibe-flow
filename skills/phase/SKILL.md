---
name: phase
description: Phased implementation planning - creates PLAN.md with tasks and acceptance criteria
argument-hint: <feature-name>
user-invocable: true
disable-model-invocation: true
---

First, determine the feature name and plans directory:
1. Feature name: Use "$1" if provided, otherwise run `git branch --show-current` and use the current branch name
2. Plans directory: Run `echo $VIBE_FLOW_PLANS_DIR` - if empty, use ".plans" as default
3. Full path: <plans-dir>/<feature-name>/

Read the documents in that plans directory. Your objective is to generate a comprehensive PLAN.md based on the information from the other documents.

Do this as a stepped process and take it slow. Your job is to interview me and collaborate on building the plan together. Do not make assumptions - ensure I understand and agree with each part before you write it. Only write a phase at a time.

## Plan Structure

Each phase should include:
- Summary with Goal
- Single line Acceptance Criteria
- Tasks and sub-tasks as needed

Use markdown checkboxes (`- [ ]`) for all tasks and sub-tasks.

At the top of PLAN.md, include: "Mark tasks complete with `- [x]` as you finish them."

## Process

1. **Summarize your understanding** - After reading the PRD and research docs, present a brief summary of what you understand needs to be built
2. **Propose phase breakdown** - Before any details, propose just the phase names/goals as a high-level outline. Ask for my input on ordering, scope, and if any phases should be split or combined
3. **For each phase** (one at a time):
   - Explain the goal and what you think belongs in this phase
   - Ask clarifying questions about scope, edge cases, or priorities
   - Present the proposed tasks and acceptance criteria
   - Only after my approval, write that phase to the file
   - Do not write phases that have not been approved
4. **Production Readiness section** - At the end, collaboratively build a section for items to keep in mind for production readiness. This includes deferred work and things discovered during planning.
5. **Final review** - Walk through the complete plan together for any final adjustments
