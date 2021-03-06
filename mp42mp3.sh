#!/bin/sh
for file in "$@" ; do
     name=`echo "$file" | sed -e "s/.mp4$//g"`
     ffmpeg -i "$file" -ac 2 -f wav - | lame --preset standard - "$name.mp3"
done
