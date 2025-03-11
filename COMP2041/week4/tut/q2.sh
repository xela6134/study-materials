#!/bin/dash

# current_hour="$(date | cut -d ' ' -f4 | cut -d ':' -f1)"

current_hour=000007

test "$current_hour" -ge 9 -a "$current_hour" -lt 17
if [ "$?" = 0 ]
then
    echo "Business Hours"
else
    echo "Closed"
fi
