#!/usr/bin/env bash
# coding: UTF-8

# Usage: Zip file {file_to_zip} with password {passwd}.

# Zip
echo "Starting zip..."
start=$SECONDS
zipped_name="zipped.zip"
passwd="A password"
file_to_zip="pass_zip_folder.sh"
zip \
    $zipped_name \
    $file_to_zip \
    -P "${passwd}" \
    -x $zipped_name ./Video/\* \
;
echo "Zip done!"
printf "Duration = $duration seconds.\n"
