#!/bin/dash
# This program lists all the files within a directory
# Made by blah

# Error message if insufficient command line arguments are provided
usage() {
    echo "Usage: $0 DIRECTORY"
    exit 1
}

if [ "$#" -lt 1 ]
then
    usage
fi

# Constants provided by command line arguments
DIRECTORY="$1"

if [ ! -d "$DIRECTORY" ]
then
    echo "Error: Directory $DIRECTORY does not exist."
    exit 1
fi

# Extra information about files within specified directory
echo "Files in directory $DIRECTORY:"
FILES="$(ls "$DIRECTORY")"
echo "$FILES"

FILE_COUNT=$(echo "$FILES" | wc -l)
echo "Number of files: $FILE_COUNT"
