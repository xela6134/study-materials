#!/bin/dash

# globbing
# 1. junk/*.c
# 2. junk/*.cpp
# 3. junk/*.c*
# 4. junk/*.*
# 5. junk/hell?.c
# 6. junk/*.java

for file in junk/*.c*
do
    echo "$file"
done
