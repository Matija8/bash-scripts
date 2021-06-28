#!/usr/bin/env bash
# coding: UTF-8

read -p "Enter zip file name (without .zip): " filename
filename="$filename.zip"

zip -e "$filename" -r .
