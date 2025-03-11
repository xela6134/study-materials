#!/bin/dash

echo -n "Enter a file: "
read file

if ! [ -f "$file" ]
then
    echo "No valid file named $file exists!"
    exit 1
fi

# Globbing with case statements
case "$file" in
    *.c)
        echo "$file is a C file"
        ;;
    *.java)
        echo "$file is a Java file"
        ;;
    *.py)
        echo "$file is a Python file"
        ;;
    *.cpp)
        echo "$file is a C++ file"
        ;;
    *)
        echo "I have no idea what $file is"
        ;;
esac

echo -n "Was this information useful? (y/n): "
read feedback
case "$feedback" in
    [Yy])
        echo "Thanks :D"
        ;;
    [Nn])
        echo ">:("
        ;;
    *)
        echo "I don't understand"
        ;;
esac
