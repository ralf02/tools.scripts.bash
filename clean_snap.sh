#!/bin/bash
#Removes old revisions of snaps
awk '/disabled/{print $1, $3}' |
     while read snapname revision; do
         snap remove "$snapname" --revision="$revision"
     done
