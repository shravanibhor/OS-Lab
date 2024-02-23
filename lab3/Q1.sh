echo "enter the file/dir u wanna check"
read path
if [ -d $path ]
then
echo "The $path is a directory"
elif [ -f  $path ]
then
echo "The $path is a regular file"
else
echo "$path not found in the current directory"
fi

