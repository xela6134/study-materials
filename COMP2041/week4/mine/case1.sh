#!/bin/dash

# Basic usages of case
# case expression in
# pattern1)
#     # Commands executed if pattern1 matches the expression
#     ;;
# pattern2)
#     # Commands executed if pattern2 matches the expression
#     ;;
# pattern3|pattern4)
#     # Commands executed if pattern3 or pattern4 match the expression
#     ;;
# *)
#     # Default commands executed if no pattern matches the expression
#     ;;
# esac

echo -n "Enter a day: "
read day

day=$(echo "$day" | tr '[:upper:]' '[:lower:]')

case $day in
    "monday"|"tuesday"|"wednesday"|"thursday"|"friday")
        echo "Weekday"
        ;;
    "saturday"|"sunday")
        echo "Weekend"
        ;;
    *)
        echo "Invalid"
        ;;
esac
