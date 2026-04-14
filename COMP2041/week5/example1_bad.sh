#!/bin/dash

i=1

# loop
while [ "$i" -le $1 ]
do
    j=1
    while [ $j -le "$i" ]
    do
      echo   -n      "*"
      j="$((j + 1))"
    done




    echo ""
    i="$((i + 1))"
done

