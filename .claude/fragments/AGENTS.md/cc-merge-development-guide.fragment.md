# cc-merge Development Guide

Merge queue for git worktrees with finished Claude outputs. Distributed via Homebrew: `brew install yasyf/tap/cc-merge`.

## Repository Structure

```
cc-merge/
├── cmd/cc-merge/   # main package — the CLI entry point
├── internal/
│   ├── cli/               # cobra command tree — root command and its subcommands
│   ├── version/           # build version, stamped via -ldflags
│   └── log/               # slog setup
├── .github/               # GitHub Actions workflows
├── AGENTS.md              # This file — shared conventions
└── README.md              # Project overview
```
