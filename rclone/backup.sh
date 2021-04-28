#!/usr/bin/env bash
# coding: UTF-8
# Back up documents to google drive.

# Colors:
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

printf "${BLUE}Backing up...${NC}\n"
cd "$(dirname "$0")"
start=$SECONDS
if
    rclone sync "./" "gdrive:Random/Folder Name Here/" \
    --exclude ".git/**" \
    --exclude ".vscode/**" \
    --exclude ".mypy_cache/**" \
    --exclude "__pycache__/**"
then
    printf "${GREEN}Done!${NC}\n"
else
    printf "${RED}Error!${NC}\n"
fi

duration=$((SECONDS - start))
printf "\n${BLUE}All Done!${NC}\n"
printf "Duration = $duration seconds.\n"
