#!/usr/bin/env bash
# coding: UTF-8

# Change working directory to this scripts directory.
cd $(dirname "$0")
# echo $(pwd)

files_to_link=(q_update.sh clear_port.sh dl_playlist.sh)

# https://stackoverflow.com/questions/47367985/expanding-a-bash-array-only-gives-the-first-element
for file in ${files_to_link[@]}; do
    echo "Updating $file"
    ln -sf "$(pwd)/$file" ~/Apps/bin/$file
done

# After calling this script call
# $ hash -r
# if in bash, or
# $ rehash
# if in zsh,
# where $ is the shell prompt.

echo "Linking done!"
