#!/bin/dash

p=2
while [ "$p" -lt "$1" ]
do
    if ./is_prime.sh "$p" >/dev/null
    then
        echo "$p is prime"
    fi
    p="$((p + 1))"
done
