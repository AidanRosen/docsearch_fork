#!/bin/bash

# Usage: ./script.sh <directory> <string>

# Get directory path and string from command line arguments
dir=$1
string=$2

# Initialize line count to 0
line_count=0

# Loop through all files in the directory
for file in "$dir"/*.txt; do
  # Check if file exists
  if [ -f "$file" ]; then
    # Count the number of lines containing the string in the file
    count=$(grep -c "$string" "$file")
    # Add the count to the total line count
    line_count=$((line_count + count))
  fi
done

# Print the total line count
echo "The number of lines containing '$string' in the directory '$dir' is: $line_count"
