#!/usr/bin/env bash
set -e

echo "🚀 Starting openresearch-mcp..."

exec openresearch-mcp --host 0.0.0.0 --port 7860
