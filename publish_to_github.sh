#!/bin/sh
# One-time: create the public repo HinesCasey13/faantasy-gm, push, and trigger the first refresh.
set -e
cd "$(dirname "$0")"
REPO="faantasy-gm"

gh auth status >/dev/null 2>&1 || { echo "Run: gh auth login -h github.com -w"; exit 1; }
[ -d .git ] || git init -q -b main
git add .gitignore README.md sleeper_gm.py publish_to_github.sh chatgpt_task_prompts.md \
        .github/workflows/refresh.yml reports/ data/snapshot.json data/status.json
git commit -q -m "Sleeper GM read-only data pipeline" || true
gh repo create "$REPO" --public --source=. --remote=origin --push \
  --description "Read-only Sleeper fantasy league briefing, refreshed hourly"
gh workflow run refresh.yml
echo "Live URL: https://raw.githubusercontent.com/$(gh api user -q .login)/$REPO/main/reports/latest.md"
