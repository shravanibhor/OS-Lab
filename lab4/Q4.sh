read -p "filename:" filename
read -p "option:" option
count() {
    local option="$1"
    local file="$2"
    case "$option" in
        "-linecount")
            wc -l "$file"
            ;;
        "-wordcount")
            wc -w "$file"
            ;;
        "-charcount")
            wc -m "$file"
            ;;
        *)
            echo "Invalid option: $option"
            ;;
    esac
}
count "$option" "$filename"

