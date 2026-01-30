---
name: implement
description: Execute next incomplete phase from PLAN.md with review cycles and version control
argument-hint: <feature-name>
user-invocable: true
disable-model-invocation: true
---

First, determine the feature name and plans directory:
1. Feature name: Use "$1" if provided, otherwise run `git branch --show-current` and use the current branch name
2. Plans directory: Run `echo $VIBE_FLOW_PLANS_DIR` - if empty, use ".plans" as default
3. Full path: <plans-dir>/<feature-name>/

Read the documents in that plans directory. Your job is to implement the next incomplete phase in the PLAN.md file. After implementing either a phase or sub-phase ask for a review of both the code and functionality. If there are things that can be manually tested at that point of implementation give examples of what to test to show that the implementation works. This feedback phase will result in: 1) A request to make changes. 2) A request to defer remaining work to a later phase. 3) Acceptance of the work. If the feedback results in acceptance and/or deferment, update the state of the PLAN document. Also document any deviations from the original plan. Once work on a phase/subphase is complete the last remaining work item is to ask the user if it's ok to commit the changes to version control.

If new work is identified that does not correspond with the current plan (i.e. is not represented in a todo item), ask the user if they would like to update the current phase to incorporate the new work or if they would like to add it to the plan and defer it. Make a recommendation as to what you think would be best.

Before beginning implementation do a recap with the user of what to expect. Show them the Phase name, the todo items and the acceptance criteria and ask them if they're ready to begin.

Once complete (Phase is marked complete & changes are committed) show the user what the next phase is.
