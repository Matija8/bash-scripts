#!/usr/bin/env bash
# coding: UTF-8
# Compare local documents and google drive.


# Colors:
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


printf "${BLUE}Checking...${NC}\n\n"
cd "$(dirname "$0")"
start=$SECONDS
if rclone check "./" "gdrive:Random/Folder Name Here/" \
    --exclude ".git/**" \
    --exclude ".vscode/**" \
    --exclude ".mypy_cache/**" \
    --exclude "__pycache__/**" \
;
    then printf "${GREEN}Good!${NC}\n"
    else printf "${RED}Bad!${NC}\n"
fi


duration=$(( SECONDS - start ))
printf "\n${BLUE}Done!${NC}\n"
printf "Duration = $duration seconds.\n"
