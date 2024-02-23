files=$(find . -type f -name "*.txt")


for file in $files; do
    newname="${file%.txt}.text"  
    mv "$file" "$newname"         
    echo "Renamed $file to $newname"
done
