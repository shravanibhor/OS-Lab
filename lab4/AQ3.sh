read -p "Enter filename" filename
read -p "Enter start line" start_line
read -p "Enter end_line" end_line
awk "NR >= $start_line && NR <= $end_line" "$filename"
