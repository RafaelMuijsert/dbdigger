#!/bin/sh

while read line
do 
    # Create a temporary directory
    temp="$(mktemp -d)"
    # Recursively download Git directory to /tmp/
    status="$(wget --cut-dirs=1 -q -nc -np -nH -r -e robots=off -R 'index.html?*' -P $temp/ $line/.git/)"
    if [ $? != 0 ]
    then
        echo "An error occurred while downloading $line. Continuing..."
        continue
    fi
    cd "$temp"
    git restore . || continue
    git log -p -G "mysqli" && echo "$line"
done
