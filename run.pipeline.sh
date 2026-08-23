#!/usr/bin/env bash
set -euo pipefail

: "${COLLECTOR_ID:?Set COLLECTOR_ID first, for example: export COLLECTOR_ID=c_xxx}"
: "${TARGET_URL:?Set TARGET_URL first, for example: export TARGET_URL=https://example.com/products}"

echo "Running Bright Data collector..."
echo "Collector: ${COLLECTOR_ID}"
echo "Target: ${TARGET_URL}"

npx -p @brightdata/cli bdata scraper run "${COLLECTOR_ID}" "${TARGET_URL}" --pretty

echo
echo "Pipeline completed successfully."
