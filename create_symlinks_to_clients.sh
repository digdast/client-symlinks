#!/bin/bash

# Function to create a symlink
create_symlink() {
    read -p "Enter the source folder path: " src
    read -p "Enter the name for the symlink: " symlink_name
    read -p "Enter the target directory where the symlink will be created: " target_dir

    # Create the symlink
    ln -s "$src" "$target_dir/$symlink_name"
    
    echo "Created symlink for $src as $symlink_name in $target_dir"
}

# Loop to create multiple symlinks
while true; do
    create_symlink
    
    read -p "Do you want to create another symlink? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        break
    fi
done
