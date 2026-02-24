# openclawProj

这是一个用于测试 OpenClaw 工作流的工程验证项目，目标是建立可审计、可复现的最小工作区，支持后续「计划 → 执行 → 验证 → 复现」流程。

## 项目目的

- 验证 OpenClaw 在本地工程中的基础落地能力
- 固化任务记录模板与脚本入口
- 保留后续执行与验证的结构化证据（runbook + logs + scripts）

## 当前目录结构

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

## OpenClaw 已完成步骤记录（本次）

1. **路径与环境确认**
   - 确认目标目录存在，并在指定路径下执行操作。
   - 操作范围限制在：
     `/Users/sakura/Documents/書類 - /LiveInJapan(2019/2025/0工作/ABIST/git源代码/openclawProj`

2. **创建可审计工作区骨架**
   - 新增 `.vscode/`、`runbooks/`、`logs/`、`scripts/`。
   - 仅新增目录与文件，不修改业务代码。

3. **写入模板文件**
   - `runbooks/TASK-001.md`：任务执行与复现模板（中文章节齐全）。
   - `.vscode/tasks.json`：配置 `bootstrap` / `verify` 两个 shell 任务。
   - `.vscode/settings.json`：最小必要设置，避免影响团队风格。
   - `logs/.gitkeep`：保证日志目录可被 Git 跟踪。

4. **写入安全占位脚本**
   - `scripts/bootstrap.sh`：占位初始化脚本（打印时间、目录、提示，不执行危险动作）。
   - `scripts/verify.sh`：占位验证脚本（基础目录存在性检查，不执行危险动作）。
   - 已为脚本设置可执行权限：`chmod +x`。

5. **Git 状态与仓库信息**
   - 当前目录已是 Git 仓库。
   - 远程仓库：`origin = https://github.com/sakura050601/openclawProj.git`

## 如何使用

### 1) 在 VS Code 执行任务

- 打开命令面板：`Tasks: Run Task`
- 选择：
  - `bootstrap`
  - `verify`

### 2) 终端执行（等价）

```bash
./scripts/bootstrap.sh
./scripts/verify.sh
```

### 3) 记录任务执行过程

- 在 `runbooks/TASK-001.md` 中补充：
  - 实际命令
  - 报错现象
  - 假设分析
  - 修正措施
  - 验证结果与结论

## 后续建议

- 将每次执行日志输出到 `logs/`（按日期命名）。
- 任务按编号扩展 runbook（如 `TASK-002.md`、`TASK-003.md`）。
- 在 `scripts/` 中逐步把占位命令替换为真实工程命令，并保持幂等与可审计。

---

维护说明：本 README 用于记录 OpenClaw 在该项目中的落地步骤与当前状态。
