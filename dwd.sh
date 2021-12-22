#! /bin/bash

# reads from a links.txt file
# uses youtube dl?

while read p; do
  youtube-dl --no-playlist -x --audio-format mp3 "$p"
done <links.txt
