#!/bin/bash -e
local_branch="ozstar-v2"

echo ">> Fetching upstream..."
git fetch upstream
echo; echo ">> Checking out branch: ${local_branch} ..."
git checkout ${local_branch}
echo; echo ">> Merging: upstream/develop -> (local)/${local_branch} ..."
git merge upstream/develop
echo; echo ">> Done."
