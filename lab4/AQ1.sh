read -p "Enter filename" filename
echo "Permissions of file '$filename':"
echo "Owner: $(stat -c '%A' "$filename")"
echo "Group: $(stat -c '%G' "$filename")"
echo "Others: $(stat -c '%a' "$filename" | cut -c 2-4)"
