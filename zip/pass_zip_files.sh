#!/usr/bin/env bash
# coding: UTF-8

# Usage: Zip files {files_to_zip} with password {passwd}.

# Zip
echo "Starting zip..."
start=$SECONDS
zipped_name="zipped.zip"

date=$(date '+%Y-%m-%d')
# Uncomment below if adding date to filename.
# zipped_name="zipped $date.zip"

passwd="A password"
files_to_zip="LICENSE README.md"
rm -f "$zipped_name"

zip \
-q \
"$zipped_name" \
$files_to_zip \
-P "${passwd}" &&
    echo "Zip success." || echo "Zip failure."
echo "Zip done!"
duration=$((SECONDS - start))
printf "Duration = $duration seconds.\n"
