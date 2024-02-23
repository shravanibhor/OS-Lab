read -p "Enter the file extension (e.g., .txt): " file_extension

read -p "Enter the name of the new folder: " new_folder

mkdir -p "$new_folder"

find . -maxdepth 1 -type f -name "*$file_extension" -exec cp {} "$new_folder" \;

echo "Files with extension $file_extension have been copied to $new_folder folder."
