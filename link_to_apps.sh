#!/usr/bin/env bash
# coding: UTF-8

# Change working directory to this scripts directory.
cd $(dirname "$0")

files_to_link=(q_update.sh
    clear_port.sh
    dl_playlist.sh
    start_mongod.sh
    youtube-dh-hd.sh
    /zip/zip_current_dir.sh)

# https://stackoverflow.com/questions/47367985/expanding-a-bash-array-only-gives-the-first-element
for file_path in ${files_to_link[@]}; do
    file_basename=$(basename $file_path)
    echo "Updating $file_basename"
    ln -sf "$(pwd)/$file_path" ~/Apps/bin/$file_basename
done

# After calling this script call
# $ hash -r
# if in bash, or
# $ rehash
# if in zsh,
# where $ is the shell prompt.

echo "Linking done!"
