#This program checks if a file exists, it creates a new directory and moves a copy of the user specified file to it.
 
echo "Enter the file name to be moved"
read file1
if [ -f $file1 ]
then
    echo "Enter the directory to be created :"
    read newdir
    mkdir "$newdir"
    cp $file1 "$newdir/$file1"
    echo "The new directory $newdir has been created and $file1 has been copied.."
else 
    echo "The file does not exist, exiting.."
    exit 1
fi
