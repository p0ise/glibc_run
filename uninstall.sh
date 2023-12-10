#!/bin/bash

# Define the symbolic link path
SYMLINK_PATH="/usr/local/bin/glibc_run"

# Check for necessary permissions
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

# Remove the symbolic link if it exists
if [ -L "$SYMLINK_PATH" ]; then
    rm "$SYMLINK_PATH"
    echo "Symbolic link $SYMLINK_PATH has been removed."
else
    echo "Symbolic link $SYMLINK_PATH does not exist."
fi

echo "Uninstallation complete."