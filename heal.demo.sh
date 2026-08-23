#!/usr/bin/env bash
set -euo pipefail

: "${COLLECTOR_ID:?Set COLLECTOR_ID first, for example: export COLLECTOR_ID=c_xxx}"

BREAK_DESCRIPTION="${1:-The scraper stopped extracting product price and availability because the target page structure changed. Find the new product fields and preserve the existing structured output shape.}"

echo "Starting Bright Data self-healing demo..."
echo "Collector: ${COLLECTOR_ID}"
echo "Problem: ${BREAK_DESCRIPTION}"

npx -p @brightdata/cli bdata scraper heal "${COLLECTOR_ID}" "${BREAK_DESCRIPTION}"

echo
echo "A proposed repair should be reviewed before approval."
echo "Approve only after checking the preview result."
