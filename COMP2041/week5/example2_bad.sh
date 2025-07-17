#!/bin/dash

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 DIRECTORY"
  exit 1
fi

# Error handling if directory does not exist
if ! [ -d "$1" ]
then
  echo "Error: Directory $1 does not exist."
  exit 1
fi

echo "Files in directory $1:"
a="$(ls "$1")"
echo "$a"

b=$(echo "$a" | wc -l)
echo "Number of files: $b"
