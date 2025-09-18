#!/bin/sh
# squash-upstream.sh
# Squash all differences into one commit based on upstream/dev86

set -e

UPSTREAM_REPO="https://github.com/ghaerr/8086-toolchain.git"
BASE_BRANCH="dev86"
TARGET_BRANCH="squash-$(date +%Y%m%d%H%M%S)"

# Make sure upstream is configured
if ! git remote | grep -q "^upstream$"; then
    echo "🔗 Adding upstream remote: $UPSTREAM_REPO"
    git remote add upstream "$UPSTREAM_REPO"
fi

# Fetch latest from both remotes
git fetch upstream
git fetch origin

# Create a new branch from upstream/dev86
git checkout -B "$TARGET_BRANCH" "upstream/$BASE_BRANCH"

# Stage everything (tracked + untracked)
git add -A

# Commit all changes as one
git commit -m "Squash: all changes based on upstream/$BASE_BRANCH"

# Push to your fork
git push -u origin "$TARGET_BRANCH"

echo
echo "✅ Squashed branch '$TARGET_BRANCH' created from upstream/$BASE_BRANCH."
echo "Now open a Merge Request from '$TARGET_BRANCH' into upstream/$BASE_BRANCH."
