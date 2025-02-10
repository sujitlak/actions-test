#!/bin/bash

LAST_COMMIT_DATE=$(git log -1 --since="1 day ago" --format=%cd --date=iso8601)
if [[ -n "$LAST_COMMIT_DATE" && $(git branch --show-current) == "test" ]]; then
echo "Pushes detected on 'test' branch in the last 24 hours"
echo "push_detected=true" >> $GITHUB_ENV
else
echo "No pushes to the 'test' branch in the last 24 hours"
echo "push_detected=false" >> $GITHUB_ENV
fi