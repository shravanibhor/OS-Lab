echo "Enter the pattern (string) to search for: "
read pattern

echo "Files containing the pattern $pattern in the current directory:"
grep -rl "$pattern" . 
