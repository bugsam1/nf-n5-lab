#!/bin/bash
# research probe: records whether build env exposes variables (length + truncated hash only, never the value)
mkdir -p out
{
echo "context=$CONTEXT branch=$BRANCH head=$HEAD commit=$COMMIT_REF review_id=$REVIEW_ID"
echo "secret_len=${#N5_SECRET}"
echo "secret_sha16=$(printf %s "$N5_SECRET" | sha256sum | cut -c1-16)"
echo "plain=$N5_PLAIN"
} > out/index.txt
cp out/index.txt out/index.html
