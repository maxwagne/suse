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
    sudo cp -p fix "${target_dir}50_wakeupfix"

    # Set ownership and permissions for the copied file
    sudo chown root:root "${target_dir}50_wakeupfix"
    sudo chmod 755 "${target_dir}50_wakeupfix"

    echo "Script deployed successfully."
else
    echo "Failed to create directory: $target_dir"
fi

