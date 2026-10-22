#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"
export PATH="${HOME}/.nvm/versions/node/v24.22.1/bin:${PATH}"
if [[ ! -f dist/index.html ]]; then
  node node_modules/vite/bin/vite.js build
fi
exec node node_modules/vite/bin/vite.js preview --host 127.0.0.1 --port 8003 --strictPort
