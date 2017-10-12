#!/bin/bash

set -e

git filter-branch -f --prune-empty --index-filter \
  'git rm --cached -qr --ignore-unmatch -- . && \
  git reset -q $GIT_COMMIT -- build cluster hack federation test/integration/federation test/e2e_federation' fed-move-out
# strip unwanted empty commits
git filter-branch -f --prune-empty --parent-filter \
  'sed "s/-p //g" | xargs -r git show-branch --independent | sed "s/\</-p /g"'
