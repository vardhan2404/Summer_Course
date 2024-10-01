#! /bin/bash
# file_count=$(ls | wc)
file_count=$(ls | wc -l)
echo "The no. of files in current directory is: $file_count"