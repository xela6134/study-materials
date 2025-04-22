#!/bin/dash

c_count=0
py_count=0
java_count=0

for file in "$@"
do
    ext="$(echo $file | cut -d'.' -f2,2)"
    if [ "$ext" = "c" ]; then
        c_count="$((c_count + 1))"
    elif [ "$ext" = "py" ]; then
        py_count="$((py_count + 1))"
    elif [ "$ext" = "java" ]; then
        java_count="$((java_count + 1))"
    fi
done

echo "c: $c_count time(s)"
echo "py: $py_count time(s)"
echo "java: $java_count time(s)"
