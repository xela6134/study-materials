#!/bin/dash

for file in "$@"; do
    # Recursively calls itself, and
    # - "$file"/*       | Expands all non-hidden files
    # - "$file"/.[!.]*  | Expands all hidden files
    # - "$file"/..?*    | Expands to hidden files with at least two characters after . (to avoid . and ..).
    if [ -d "$file" ]; then
        ./"$0" "$file"/* "$file"/.[!.]* "$file"/..?*
    fi

    if [ ! -f "$file" ]; then
        continue
    fi

    temporary_file="$(mktemp)"

    sed 's/COMP2041/COMP2042/g; s/COMP9044/COMP9042/g' "$file" > "$temporary_file" &&
    mv "$temporary_file" "$file"

    rm -f "$temporary_file"
done
