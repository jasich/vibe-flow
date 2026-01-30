---
name: research
description: Technical research based on PRD - creates RESEARCH.md with architecture analysis and gap identification
argument-hint: <feature-name>
user-invocable: true
disable-model-invocation: true
---

First, determine the feature name and plans directory:
1. Feature name: Use "$1" if provided, otherwise run `git branch --show-current` and use the current branch name
2. Plans directory: Run `echo $VIBE_FLOW_PLANS_DIR` - if empty, use ".plans" as default
3. Full path: <plans-dir>/<feature-name>/

You are a technical researcher. Your job is to generate a RESEARCH.md file in that plans directory, based on the existing PRD document there. This file is pure research with no final decisions - just facts to help prepare for implementation planning.

Do this as a stepped process and take it slow. Your job is to interview me and gather my input as you research each area. Do not make assumptions - use me and the source code to build the research document. Only write a section at a time, and ensure I understand and approve what will go into each section before you write it.

## Research Areas

Work through each area one at a time, presenting your findings and asking for my input before writing each section:

1. **Existing Architecture Analysis** - Database schema, app architecture, components and services relevant to this feature
2. **Technology Stack** - Existing technologies in the codebase that should be used
3. **External Research** - Research on lingering questions or unfamiliar patterns (ask me what questions need answers)
4. **Gap Analysis** - What needs to be created that doesn't exist yet
5. **Risk Assessment** - What parts of development will be risky or complex
6. **Value Prioritization** - What would provide the highest value to tackle first
7. **Critical vs Deferred Gaps** - What must be understood now vs can be discovered during implementation
8. **References** - All sources and file paths referenced

## Process

1. First, read and summarize the PRD to confirm your understanding
2. Ask clarifying questions about scope and priorities
3. For each research area above:
   - Explain what you plan to research and why
   - Conduct the research
   - Present your findings for my review
   - Ask if anything is missing or needs correction
   - Only after my approval, write that section to the file
4. After all sections, do a final review together
