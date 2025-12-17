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
git status | grep 'Changes not staged for commit'
if (($? == 0)); then
    exit
fi

git checkout origin/tmp TO_202504.ipynb

# Skip following procedure because of 'Refresh Git index' failed
pre-commit run --files TO_202504.ipynb
i=0
while (($? != 0)); do
    # Repeat until all 'Passed' at Clean notebook.., Refresh Git.., nb-clean
    pre-commit run --files TO_202504.ipynb
    ((++i))
    if (($i > 3)); then
        set_color red bold
        echo "Failed to pre-commit"
        echo "  Run 'git commit -m' instead"
        reset_color
        exit 1
    fi
done
git diff HEAD
if (($? != 0)); then
    git add TO_202504.ipynb
fi

git commit -s -m "$*"
git diff HEAD~1

set_color blue bold
echo "If no problem in diff results => git push"
# git push
reset_color
