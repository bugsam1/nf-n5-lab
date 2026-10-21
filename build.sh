#!/bin/bash
# research probe: records only whether variables are present in this build (no value or derived data)
mkdir -p out
s=absent; [ -n "$N5_SECRET" ] && s=present
p=absent; [ -n "$N5_PLAIN" ] && p=present
echo "context=$CONTEXT branch=$BRANCH head=$HEAD commit=$COMMIT_REF review_id=$REVIEW_ID secret=$s plain=$p" > out/index.html
