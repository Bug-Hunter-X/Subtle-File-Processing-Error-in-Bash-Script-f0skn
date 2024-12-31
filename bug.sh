#!/bin/bash

# This script attempts to process a file, but it mishandles errors
# in a subtle way that might be hard to find.

file_to_process="/tmp/nonexistent_file.txt"

# Incorrect error handling
cat "${file_to_process}" > /dev/null 2>&1 || echo "File processing failed"

# Try to remove file (may cause problems if previous command failed)
rm -f "${file_to_process}"

echo "Script completed"