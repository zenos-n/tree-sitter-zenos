#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
tree-sitter parse --quiet test/zenos/*.zcfg
if [[ $# -gt 0 ]]; then
  find "$1" -type f \( -name '*.zcfg' -o -name '*.zmdl' -o -name '*.zpkg' -o -name '*.zstr' \) > /tmp/zenos-grammar-paths-$$
  trap 'rm -f /tmp/zenos-grammar-paths-$$' EXIT
  tree-sitter parse --quiet --paths /tmp/zenos-grammar-paths-$$
fi
