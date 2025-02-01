#!/bin/dash

i=1
while [ "$i" -lt 10 ]
do
    i=$(($i+1))

    if [ "$i" -eq 6 ]
    then
        continue
    fi

    mkdir "COMP2041/week$i"
    mkdir "COMP3311/week$i"
done
