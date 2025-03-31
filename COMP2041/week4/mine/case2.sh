#!/bin/dash

# What if we want to provide options when writing code?
case "$1" in
    "")
        echo "Hello!"
        ;;
    -h|--help)
        echo "Usage: $(basename $0) [options]"
        echo "Options:"
        echo "  -h, --help    Show this help message"
        echo "  -v, --version Show the script version"
        ;;
    -v|--version)
        echo "$(basename $0) version 1.0"
        ;;
    *)
        echo "Invalid option. Use -h or --help for usage information."
        ;;
esac
