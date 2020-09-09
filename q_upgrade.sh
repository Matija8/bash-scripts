#!/usr/bin/env bash
# coding: UTF-8

# Quick apt update & upgrade script.

RED='\033[0;31m'
NC='\033[0m' # No Color

sudo printf "\n\n${RED}Update:${NC}\n\n"
sudo apt update

printf "\n\n${RED}Upgrade:${NC}\n\n"
sudo apt upgrade -y

printf "\n\n${RED}Autoremove:${NC}\n\n"
sudo apt autoremove
