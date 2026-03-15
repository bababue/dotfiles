#!/bin/bash


# Execute each file in the directory
for file in "./installs/"/*; do
    if [ -f "$file" ] && [ -x "$file" ]; then
        echo "Executing: $file"
        "$file"
    else
        echo "Skipping (not executable): $file"
    fi
done

