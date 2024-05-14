#!/bin/bash


output_file="disk_usage.txt"

df -h > "$output_file"

echo "Disk usage information saved to $output_file"

