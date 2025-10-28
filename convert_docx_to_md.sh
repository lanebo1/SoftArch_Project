#!/bin/bash

# Script to convert all .docx files in labs/ directory to .md format

echo "Converting .docx files to .md format..."

# Change to the labs directory
cd "/home/lanebo1/SoftArch_Project/labs"

# Find all .docx files and convert them
for file in *.docx; do
    if [ -f "$file" ]; then
        # Get the filename without extension
        base_name="${file%.docx}"
        # Convert to markdown
        echo "Converting: $file -> ${base_name}.md"
        pandoc "$file" -f docx -t markdown -o "${base_name}.md"
    fi
done

echo "Conversion complete!"
echo "Converted files:"
ls -la *.md
