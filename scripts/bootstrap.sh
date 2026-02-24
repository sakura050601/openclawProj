#!/usr/bin/env bash
set -euo pipefail

echo "[bootstrap] 开始执行"
echo "[bootstrap] 时间: $(date '+%Y-%m-%d %H:%M:%S %z')"
echo "[bootstrap] 当前目录: $(pwd)"

echo "[bootstrap] 这是安全占位脚本，暂不执行真实依赖安装。"
echo "[bootstrap] 请在此脚本中补充项目实际初始化命令（如包管理器 install 等）。"

echo "[bootstrap] 完成（占位）"
