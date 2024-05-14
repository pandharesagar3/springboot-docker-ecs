#!/bin/bash

root_folder="/"

output_file="large_files_list.csv"

find "$root_folder" -type f -size +10M -exec du -h {} + > "$output_file"


echo "List of files larger than 10 MB saved to $output_file"

