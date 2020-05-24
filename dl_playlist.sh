#!/usr/bin/env bash
# coding: UTF-8

# Matija8
# Download youtube playlists with youtube-dl

# usage="Usage: ./dl_playlist.sh [-h] [-f=V[+A]]"
usage="Usage: ./dl_playlist.sh playlist_url1 pl_url2..."

# while getopts ":hf" opt; do
#   case ${opt} in
#     h ) # process option h
#       ;;
#     f ) # process option f
#       ;;
#     \? ) echo $usage
#       ;;
#   esac
# done

function dl_playlist {
    printf "Downloading playlist ${1}...\n"
    youtube-dl -o "%(playlist_index)s %(title)s.%(ext)s" $1
    printf "Downloading playlist ${1} done.\n"
}

# function main {
#     printf "Starting dl_playlist.sh...\n\n"
#     for url in $@
#     do
#         dl_playlist $url
#     done
#     printf "\nFinished dl_playlist.sh\n"
# }

if [ $# -lt 1 ]
then
    printf "$usage\n"
else
    printf "Starting dl_playlist.sh...\n\n"
    for url in $@
    do
        dl_playlist $url
    done
    printf "\nFinished dl_playlist.sh\n"
fi
