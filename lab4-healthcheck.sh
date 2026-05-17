#!/usr/bin/env bash
set -euo pipefail

PORT=8000
URL="http://127.0.0.1:${PORT}/"

if curl -s -o /dev/null -w "%{http_code}" "${URL}" | grep -q "200"; then
    echo "OK: Service is healthy"
    exit 0
else
    echo "FAIL: Service is not responding"
    exit 1
fi
