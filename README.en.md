# openclawProj

This repository is a test and verification project for OpenClaw workflows. It provides a minimal, auditable, and reproducible workspace for the cycle:

**Plan → Execute → Verify → Reproduce**

## Project Goals

- Validate OpenClaw setup and execution in a local engineering workspace
- Standardize task documentation and script entrypoints
- Preserve structured evidence for future audits (runbooks + logs + scripts)

## Current Structure

```text
openclawProj/
├── .vscode/
│   ├── settings.json
│   └── tasks.json
├── logs/
│   └── .gitkeep
├── runbooks/
│   └── TASK-001.md
└── scripts/
    ├── bootstrap.sh
    └── verify.sh
```

## OpenClaw Actions Completed

1. **Path and environment confirmation**
   - Confirmed operations were executed under the specified target path only.

2. **Auditable workspace scaffold creation**
   - Added `.vscode/`, `runbooks/`, `logs/`, and `scripts/`.
   - Only new directories/files were created; no business code was modified.

3. **Template files prepared**
   - `runbooks/TASK-001.md`: Chinese runbook template for traceable execution.
   - `.vscode/tasks.json`: shell tasks for `bootstrap` and `verify`.
   - `.vscode/settings.json`: minimal conservative workspace settings.
   - `logs/.gitkeep`: keeps the logs directory tracked by Git.

4. **Safe placeholder scripts prepared**
   - `scripts/bootstrap.sh`: prints timestamp/path and guidance only.
   - `scripts/verify.sh`: runs basic non-destructive checks only.
   - Executable permissions were enabled (`chmod +x`).

5. **Repository information**
   - Remote: `origin = https://github.com/sakura050601/openclawProj.git`

## How to Use

### Run tasks from VS Code

- Command Palette → `Tasks: Run Task`
- Select:
  - `bootstrap`
  - `verify`

### Run from terminal

```bash
./scripts/bootstrap.sh
./scripts/verify.sh
```

### Record execution details

Fill `runbooks/TASK-001.md` with:
- actual commands
- observed errors/phenomena
- hypotheses
- corrective actions
- verification results and conclusion

## Commit History Log (Append-only)

> Rule: append one line for every new commit (time, event, commit id).

| Time (Asia/Tokyo) | Event | Commit |
|---|---|---|
| 2026-02-24 12:17:51 +0900 | Initialize project scaffold (.vscode/runbooks/logs/scripts) | `3a9ed34` |
| 2026-02-24 12:23:57 +0900 | Add Chinese README with OpenClaw execution records | `591e309` |
| 2026-02-24 12:26:18 +0900 | Add English README and establish append-only commit logging rule | `47aa71a` |

| 2026-02-24 12:26:34 +0900 | Fix commit-log table and fill missing commit id for previous entry | `7f89185` |

## Next Suggestions

- Save execution outputs in `logs/` using date-based filenames.
- Add task-specific runbooks (`TASK-002.md`, `TASK-003.md`, ...).
- Gradually replace placeholder script commands with real project commands while keeping operations idempotent and auditable.
