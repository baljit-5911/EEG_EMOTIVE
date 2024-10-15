#!/bin/bash

# Add all current files to staging
git add .

# Commit the changes with a backdated timestamp in October
BACKDATED_DATE="2024-10-15T12:00:00"
GIT_COMMITTER_DATE="$BACKDATED_DATE" git commit --date="$BACKDATED_DATE" -m "model migrated"

# Push the commit to the repository
git push origin main
