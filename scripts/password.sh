#!/bin/bash 
echo "Random Password: "
tr -dc 'A-Za-z0-0' < /dev/urandom | head -c 10 
echo

