#!/bin/bash

target_dir="/usr/lib/systemd/system-sleep/"

if [ ! -d "$target_dir" ]; then
    sudo mkdir -p "$target_dir"
fi

if [ -d "$target_dir" ]; then
    sudo cp -p fix "${target_dir}50_wakeupfix.sh"
    sudo chown root:root "${target_dir}50_wakeupfix.sh"
    sudo chmod 755 "${target_dir}50_wakeupfix.sh"
    echo "Script deployed successfully."
else
    echo "Failed to create directory: $target_dir"
fi

