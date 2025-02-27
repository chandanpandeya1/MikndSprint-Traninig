# creating and writing to a file

echo "This is a test file" > file.txt

# Appending Text to a file
echo "Another line" >>file.txt

# Reading a File
cat file.txt

# Deleting a File
rm file.txt

#Checking if a File Exists
if [ -f "file.txt" ]; then
    echo "File exists"
else    
    echo "File doesn't exist"
fi
