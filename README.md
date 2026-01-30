# vibe-flow

A structured product development workflow for Claude Code. Takes you from idea to implementation through PRD → Research → Plan → Implement.

## Workflow

```
/prd <feature>        Create PRD through interview
        ↓
/research <feature>   Technical research & gap analysis
        ↓
/plan <feature>       Phased implementation plan
        ↓
/implement <feature>  Execute next incomplete phase
        ↓
/continue <feature>   Resume interrupted work
```

## Installation

```bash
git clone https://github.com/jasich/vibe-flow.git
cd vibe-flow
./install.sh
```

## Commands

| Command | Purpose |
|---------|---------|
| `/prd <name>` | Interactive interview to create PRD.md |
| `/research <name>` | Analyze codebase, identify gaps, create RESEARCH.md |
| `/plan <name>` | Build phased PLAN.md with tasks and acceptance criteria |
| `/implement <name>` | Execute next incomplete phase with review cycles |
| `/continue <name>` | Resume interrupted implementation |

## How It Works

Each command reads from and writes to a plans directory:

```
.plans/<feature-name>/
├── PRD.md       # Product requirements
├── RESEARCH.md  # Technical analysis
└── PLAN.md      # Implementation phases with checkboxes
```

The workflow is collaborative - each step involves interviewing you to understand requirements before writing anything.

## Configuration

Override the default plans directory with:

```bash
export VIBE_FLOW_PLANS_DIR="~/my-plans"
```

Default: `.plans/` (project-local, git-trackable)

## Example Session

```bash
# Start with a feature idea
> /prd user-notifications

# Claude interviews you, creates .plans/user-notifications/PRD.md

> /research user-notifications

# Claude analyzes codebase, creates RESEARCH.md

> /plan user-notifications

# Claude proposes phases, you approve each one, creates PLAN.md

> /implement user-notifications

# Claude implements Phase 1, asks for review, commits when approved

> /implement user-notifications

# Continues with Phase 2...
```

## License

MIT
