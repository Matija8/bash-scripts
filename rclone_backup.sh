#!/usr/bin/env bash
# coding: UTF-8
# Back up documents to google drive.

printf "Backing up...\n"
cd "$(dirname "$0")"
start=$SECONDS
rclone sync "./" "gdrive:Random/Folder Name Here/" \
    --exclude ".git/**"

duration=$(( SECONDS - start ))
printf "\nDone.\n"
printf "Duration = $duration seconds.\n"
