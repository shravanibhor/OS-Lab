read -p "filename:" filename
read -p "Pattern:" patterns
search_patterns() {
    echo "Lines containing the patterns in '$filename':"
    for pattern in "${patterns[@]}"; do
        grep "$pattern" "$filename"
    done
}

# Function to delete occurrences of patterns in the input file
delete_patterns() {
    for pattern in "${patterns[@]}"; do
        sed -i "s/$pattern//g" "$filename"
    done
    echo "Occurrences of patterns have been deleted from '$filename'."
}

# Menu function
menu() {
    echo "Menu:"
    echo "a. Search the patterns in the input file"
    echo "b. Delete all occurrences of the patterns in the input file"
    echo "c. Exit"
    read -p "Enter your choice: " choice
    case "$choice" in
        a|A) search_patterns ;;
        b|B) delete_patterns ;;
        c|C) echo "Exiting."; exit ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
}

# Main loop
while true; do
    menu
done
