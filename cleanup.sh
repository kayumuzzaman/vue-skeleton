#!/bin/bash

# Define the files and folders you want to remove
files_to_remove=(
    "./src/assets/base.css"
    "./src/assets/main.css"
    "./src/components/Counter.vue"
    "./src/views/AboutView.vue"
    "./src/views/HomeView.vue"
)

folders_to_remove=(
    "./src/components/__tests__"
    "./src/components/users"
    "./src/stores/counter.js"
    ""
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

file_path="./src/router/routes.js"
new_code=$(cat <<'EOF'
export default [
    // example of how to define a route
   // {
  //   path: '/',
  //   name: 'home',
  //   component: HomeView
  // }
]
EOF
)

# Check if the file exists
if [ -f "$file_path" ]; then
    > "$file_path"
    echo "$new_code" > "$file_path"
    echo "File cleaned, and new code written."
else
    echo "File not found: $file_path"
fi

file_path_two="./src/App.vue"

if [ -f "$file_path_two" ]; then
    sed -i '/<nav>/,/<\/nav>/d' "$file_path_two"
else
    echo "File not found: $file_path_two"
fi

echo "Removal process completed."