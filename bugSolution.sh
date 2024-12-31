#!/bin/bash

# This script demonstrates improved error handling for file processing

file_to_process="/tmp/nonexistent_file.txt"

# Check if the file exists
if [ ! -f "${file_to_process}" ]; then
  echo "Error: File '${file_to_process}' does not exist." >&2
  exit 1
fi

# Process the file with improved error handling
cat "${file_to_process}" > /dev/null 2>&1 || {
  echo "Error: Failed to process file '${file_to_process}'" >&2
  exit 1
}

# Remove file only if processing was successful
rm -f "${file_to_process}"

echo "Script completed successfully"