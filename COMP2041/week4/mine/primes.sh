#!/bin/dash

NUMBER="$1"

i=2

looped=0

while [ "$((i*i))" -lt "$NUMBER" ]
do
    if [ "$((NUMBER % i))" -eq 0 ]
    then
        echo "$NUMBER is not a prime"
        exit 0
    fi

    i="$((i+1))"
    looped="$((looped+1))"
done

echo "$NUMBER is prime"
echo "looped $looped times"
