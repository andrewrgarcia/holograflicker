#!/bin/bash

# Set the starting number for the sequence
num=1

# Iterate over all files in the current directory
for file in *
do
    # Check if the file name ends with an odd number
    if [[ $file =~ [0-9]+[13579]\.png ]]; then
        # Rename the file to have a sequential number
        mv "$file" "$(printf "frame%02d.png" $num)"
        num=$((num+1))
    fi
done
