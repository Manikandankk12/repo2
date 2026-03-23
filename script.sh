#!/bin/bash

# Name of the directory to create
DIR_NAME="myfolder"

# Create the directory (use -p to avoid error if it already exists)
mkdir -p "$DIR_NAME"

# Create a sample file inside the directory
echo "This is a test file" > "$DIR_NAME/test.txt"

# Change permissions: make directory readable/writable/executable by owner
chmod 755 "$DIR_NAME"

# Change file permissions: owner can read/write, others can only read
chmod 644 "$DIR_NAME/test.txt"

# Print confirmation
echo "Directory '$DIR_NAME' created and permissions set."
ls -l "$DIR_NAME"

