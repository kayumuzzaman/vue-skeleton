#!/bin/bash

# Define the files and folders you want to remove
files_to_remove=(
    "./src/assets/base.css"
    "./src/assets/main.css"
    "./src/components/Counter.vue"
)

folders_to_remove=(
    "./src/components/__tests__"
    "./src/components/users"
    "./src/stores/counter.js"
)

# Remove files
for file in "${files_to_remove[@]}"; do
    if [ -f "$file" ]; then
        rm "$file"
        echo "Removed file: $file"
    else
        echo "File not found: $file"
    fi
done

# Remove folders (and their contents)
for folder in "${folders_to_remove[@]}"; do
    if [ -d "$folder" ]; then
        rm -r "$folder"
        echo "Removed folder: $folder"
    else
        echo "Folder not found: $folder"
    fi
done

echo "Removal process completed."
