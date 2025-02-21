#!/bin/bash

DATE=$(date +"%Y-%m-%d %T %N")

# Check if arguments are passed
COMMIT_MESSAGE="$DATE"
if [ $# -gt 0 ]; then
  # If arguments are passed, concatenate them after the date
  COMMIT_MESSAGE="$DATE $*"
fi

git add .
git commit -m "$COMMIT_MESSAGE"
git push