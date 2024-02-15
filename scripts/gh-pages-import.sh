#!/bin/bash

# This script will build the docs as HTML, then upload the build output to
# the gh-pages branch. It will throw away all history on that branch so that it
# is perpetually at a single commit.
#
# Make sure to install the Python module called ghp-import:
#    pip install ghp-import


if ! git diff-index --quiet HEAD --; then
    echo "Working directory has uncommitted changes - please 'git stash'"
    exit
fi

if ! GIT_HASH=$(git rev-parse --short=12 HEAD); then
    echo "Couldn't get Git hash for current commit; can't update gh-pages branch"
    exit
fi

if ! GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD); then
    echo "Couldn't get current Git branch; can't update gh-pages branch"
    exit
fi

REPO=$(git rev-parse --show-toplevel)
WEBSITE="$REPO/website"
MSG="Website build (branch $GIT_BRANCH, commit $GIT_HASH)"
GHP_IMPORT_BIN=ghp-import

echo "Commit message:"
echo "$MSG"

# Assume ghp-import is on the path already
if ! command -v $GHP_IMPORT_BIN &> /dev/null; then
    echo "Python module $GHP_IMPORT_BIN was not found on your PATH."
    echo "Try installing it with:"
    echo "    pip install ghp-import"
    exit 1
fi

echo "Importing $WEBSITE to the gh-pages branch..."

$GHP_IMPORT_BIN \
--no-jekyll \
--push \
--force \
--no-history \
--message="$MSG" \
$WEBSITE
