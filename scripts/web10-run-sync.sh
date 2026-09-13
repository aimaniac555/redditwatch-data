#!/bin/bash
# Host wrapper for sync-data-repo.sh on web10 (installed at /root/gha-migrated/redditwatch-data/).
# Layout on the host:
#   /root/gha-migrated/redditwatch-data/deploy_key       — RW deploy key scoped to the data repo
#   /root/gha-migrated/redditwatch-data/sync-data-repo.sh
#   /root/gha-migrated/redditwatch-data/web10-run-sync.sh (this file)
#   /root/gha-migrated/redditwatch-data/repo/            — the clone (created on first run)
# Cron (/etc/cron.d/gha-migrated-redditwatch-data):
#   41 6 * * 1 root /root/gha-migrated/redditwatch-data/web10-run-sync.sh >/dev/null 2>&1
# Monday 06:41 UTC.
set -u
BASE=/root/gha-migrated/redditwatch-data
LOG=$BASE/last-run.log
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export GIT_REMOTE="git@github.com:bryanflowers/redditwatch-data.git"
export DATA_REPO_DIR="$BASE/repo"
export SITE="https://redditwatch.org"
export GIT_SSH_COMMAND="ssh -i $BASE/deploy_key -o IdentitiesOnly=yes -o StrictHostKeyChecking=accept-new"
export GIT_AUTHOR_NAME="redditwatch-data-sync" GIT_AUTHOR_EMAIL="admin@redditwatch.org"
export GIT_COMMITTER_NAME="redditwatch-data-sync" GIT_COMMITTER_EMAIL="admin@redditwatch.org"
{
  echo "=== redditwatch-data sync $(date -u +%FT%TZ) ==="
  bash "$BASE/sync-data-repo.sh"
  rc=$?
  echo "=== exit $rc $(date -u +%FT%TZ) ==="
  exit $rc
} >"$LOG" 2>&1
