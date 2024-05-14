#!/bin/bash

backup_folder="/home/user/shell_task"

backup_dir="/home/user/shell_task_1"


backup_filename="$(date +'%Y%m%d_%H%M%S').tar.gz"


backup_path="$backup_dir/$backup_filename"


tar -czvf "$backup_path" "$backup_folder"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_path"
else
    echo "Backup failed!"
fi

