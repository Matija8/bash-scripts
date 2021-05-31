#!/usr/bin/env bash
# coding: UTF-8

# Usage: Zip file {file_to_zip} with password {passwd}.

# Zip
echo "Starting zip..."
start=$SECONDS
zipped_name="zipped.zip"
passwd="A password"
file_to_zip="pass_zip_file.sh"
zip \
$zipped_name \
$file_to_zip \
-P "${passwd}" \  &&
    echo "Zip success." || echo "Zip failure."
echo "Zip done!"
duration=$((SECONDS - start))
printf "Duration = $duration seconds.\n"
