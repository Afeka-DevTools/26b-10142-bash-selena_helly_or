#!/bin/bash

has_internet_connection() {
    curl --head --silent --fail --max-time 5 https://www.google.com/favicon.ico > /dev/null
}

if has_internet_connection; then
    echo "Connected to the internet"
else
    echo "No internet connection"
fi
