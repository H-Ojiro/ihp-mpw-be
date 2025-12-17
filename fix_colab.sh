#!/usr/bin/env bash

source ~/.bash_common

SCRIPT_PATH="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR=${SCRIPT_PATH%/*}

if (($# == 0)); then
    set_color bold
    echo "Usage: $0 <commit_message>"
    reset_color
    exit
fi

git fetch
git push --force
