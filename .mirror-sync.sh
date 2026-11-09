#!/bin/bash
# Mirror sync script for scr_prog
# This script mirrors changes between GitHub and GitLab

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# GitHub remote
GITHUB_REMOTE="origin"
# GitLab remote  
GITLAB_REMOTE="gitlab-origin"

echo "=== Mirror sync starting ==="

# Push GitHub -> GitLab
echo "Pushing to GitHub..."
git push $GITHUB_REMOTE master 2>&1 || echo "Warning: GitHub push failed"

echo "Pushing to GitLab..."
git push $GITLAB_REMOTE master 2>&1 || echo "Warning: GitLab push failed"

echo "=== Mirror sync complete ==="
