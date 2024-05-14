#!/bin/bash

check_exists() {
    if [ -e "$1" ]; then
        echo "$1 exists."
    else
        echo "$1 does not exist."
    fi
}


read -p "Enter filename or directory name: " input_name

check_exists "$input_name"

