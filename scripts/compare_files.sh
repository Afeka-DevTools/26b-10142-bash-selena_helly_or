#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Error: Please provide exactly two files."
    exit 1
fi
diff "$1" "$2"
