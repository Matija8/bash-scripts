#!/usr/bin/env bash
# coding: UTF-8
# Compare local documents and google drive.

printf "Checking...\n\n"
cd "$(dirname "$0")"
start=$SECONDS
rclone check "./" "gdrive:Random/Folder Name Here/" \
    --exclude ".git/**"

duration=$(( SECONDS - start ))
printf "\nDone.\n"
printf "Duration = $duration seconds.\n"
