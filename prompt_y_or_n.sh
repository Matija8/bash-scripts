#!/usr/bin/env bash
# coding: UTF-8

# Colors:
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function y_or_n {
    while true; do
        read -p "" yn
        case $yn in
        [Yy]*) break ;;
        [Nn]*) exit ;;
        *) echo "Please answer y(yes) or n(no)." ;;
        esac
    done
}

printf "Yes or no?${GREEN}(y/n)${NC}\n"
y_or_n
printf "You picked ${GREEN}yes!${NC}\n"
