#!/usr/bin/env bash
# coding: UTF-8

# Usage: Zip folder {folder_to_zip} with password {passwd}.

# Zip
echo "Starting zip..."
start=$SECONDS
zipped_name="zipped.zip"

date=$(date '+%Y-%m-%d')
# Uncomment below if adding date to filename.
# zipped_name="zipped $date.zip"

passwd="A password"
# Cd to this scripts directory.
cd "$(dirname "$0")"
folder_to_zip="./"
FolderToNotZip="Put folder to ignore here."

zip \
"$zipped_name" \
-q \
-r "$folder_to_zip" \
-P "${passwd}" \
-x "$zipped_name" "$FolderToNotZip"/\* &&
    echo "Zip success." || echo "Zip failure."
echo "Zip done!"
duration=$((SECONDS - start))
printf "Duration = $duration seconds.\n"
