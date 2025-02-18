#!/bin/bash

# Set the branch name you want to check
BRANCH="test"  # Change this to your target branch

# Ensure the latest changes from the remote repository are fetched
git fetch actions-test

# Get the current timestamp (current time in seconds)
CURRENT_TIMESTAMP=$(date +%s)

# Get the timestamp of 24 hours ago
LAST_24HRS_TIMESTAMP=$(date --date='24 hours ago' +%s)

# Get the timestamp of the latest commit on the remote branch
LATEST_COMMIT_TIMESTAMP=$(git log -1 --format=%ct actions-test/$BRANCH)

# Compare the commit timestamp with the 24 hours ago timestamp
if [ $LATEST_COMMIT_TIMESTAMP -ge $LAST_24HRS_TIMESTAMP ]; then
  echo "There was a commit in the last 24 hours on the remote $BRANCH branch."
else
  echo "No commits in the last 24 hours on the remote $BRANCH branch."
  exit 1  # Optionally exit with an error if no commit found in the last 24 hours
fi
