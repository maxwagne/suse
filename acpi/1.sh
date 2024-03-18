#!/bin/bash

# Define the target directory
target_dir="/usr/lib/pm-utils/sleep.d/"

# Check if the directory exists, if not, create it
if [ ! -d "$target_dir" ]; then
    sudo mkdir -p "$target_dir"
fi

# Verify if the directory was created successfully
if [ -d "$target_dir" ]; then
    # Copy the file to the target directory with -p option
    sudo cp -p fix "${target_dir}45fixusbwakeup"

    # Set permissions for the copied file
    sudo chmod +x "${target_dir}45fixusbwakeup"
else
    echo "Failed to create directory: $target_dir"
fi
