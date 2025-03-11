#!/bin/dash

for file in "$@"
do
    if ! [ -f "$file" ]
    then
        continue
    fi

    temporary_file="$(mktemp)"

    # &&: running multiple commands at the same time (if they're all valid with no errors)
    sed -E 's/COMP2041/COMP2042/g; s/COMP9044/COMP9042/g' "$file" > "$temporary_file" 
    mv "$temporary_file" "$file"

    rm -f "$temporary_file"
done
