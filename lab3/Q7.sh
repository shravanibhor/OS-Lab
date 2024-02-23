input_file="shravani.txt"
touch output.txt

output_file="output.txt"

sed 'n;d' "$input_file" > "$output_file"

echo "Output written to $output_file"

