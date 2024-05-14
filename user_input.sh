#!/bin/bash

read -p "Enter username: " username


if id "$username" &>/dev/null; then
    echo "Error: User '$username' already exists."
    exit 1
fi

read -p "Enter full name: " full_name

sudo useradd -m -c "$full_name" "$username"


if [ $? -eq 0 ]; then
    echo "User '$username' created successfully."
else
    echo "Error: Failed to create user '$username'."
fi

