#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if patch --dry-run -N lib/module.js require-fix-symlinks.patch > /dev/null ; then
    patch -N lib/module.js require-fix-symlinks.patch > /dev/null
fi
