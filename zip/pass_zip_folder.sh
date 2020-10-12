#!/usr/bin/env bash
# coding: UTF-8

# Usage: Zip folder {folder_to_zip} with password {passwd}.

# Zip
echo "Starting zip..."
start=$SECONDS
zipped_name="zipped.zip"
passwd="A password"
folder_to_zip="./"
zip \
    $zipped_name \
    -r $folder_to_zip \
    -P "${passwd}" \
    -x $zipped_name ./Video/\* \
;
echo "Zip done!"
printf "Duration = $duration seconds.\n"
