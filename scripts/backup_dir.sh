#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Error: Missing arguments."
    exit 1
fi
tar -czvf "$2" "$1"
