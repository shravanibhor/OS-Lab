for file in *; do
    if [ -f "$file" ]; then
       sed -i -E 's/(^|\.)ex:/\1Example:/g' "$file"
    fi
done

echo "Occurrences of 'ex:' have been modified to 'Example:' in all files."

