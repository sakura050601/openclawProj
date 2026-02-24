#!/usr/bin/env bash
set -euo pipefail

echo "[verify] 开始执行"
echo "[verify] 时间: $(date '+%Y-%m-%d %H:%M:%S %z')"
echo "[verify] 当前目录: $(pwd)"

echo "[verify] 基础检查："
pwd
ls -la

for d in runbooks logs scripts; do
  if [ -d "$d" ]; then
    echo "[verify] 目录存在: $d"
  else
    echo "[verify] 目录缺失: $d"
    exit 1
  fi
done

echo "[verify] 完成（占位）"
