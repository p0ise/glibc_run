#!/bin/bash

# Locate the directory of the script
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Check for necessary permissions
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

# Grant executable permissions to the script
chmod +x "$SCRIPT_DIR/glibc_run"

# Check if the symbolic link already exists
if [ -L "/usr/local/bin/glibc_run" ]; then
    read -p "The symbolic link /usr/local/bin/glibc_run already exists. Overwrite? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ln -sf "$SCRIPT_DIR/glibc_run" /usr/local/bin/glibc_run
        echo "Symbolic link updated."
    else
        echo "Installation cancelled."
        exit 1
    fi
else
    ln -s "$SCRIPT_DIR/glibc_run" /usr/local/bin/glibc_run
    echo "glibc_run has been successfully installed."
fi
