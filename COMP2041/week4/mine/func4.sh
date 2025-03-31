#!/bin/dash

show_menu() {
    echo "1. Greet"
    echo "2. Add"
    echo "3. Exit"
}

handle_choice() {
    case "$1" in
        1)
            greet
            ;;
        2)
            add
            ;;
        3)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
}

greet() {
    echo -n "Enter your name: "
    read name
    echo "Hello, $name!"
}

add() {
    echo -n "Enter first number: "
    read num1

    if ! [ "$num1" -eq "$num1" ] 2>/dev/null
    then
        echo "Invalid number!"
        exit 1
    fi

    echo -n "Enter second number: "
    read num2

    if ! [ "$num2" -eq "$num2" ] 2>/dev/null
    then
        echo "Invalid number!"
        exit 1
    fi

    # Q. What if I change exit 1 to return 1?

    result="$((num1 + num2))"
    echo "The sum is: $result"
}

# main code
while true
do
    show_menu
    echo -n "Enter your choice: "
    read choice
    handle_choice "$choice"
done
