#This script will provide information about the permissions that a user has on any given file 
echo "Enter the user whose access needs to be checked :"
read username

if ! id "$username" >/dev/null 2>&1; then
	echo "User $username does not exist..exiting the program"
	exit 1
fi
 
echo "Enter the file for which you want to check user permissions :"
read filename

if ! -f "$filename" >/dev/null 2>&1; then
	echo "The $filename file does not exist..exiting the program"
	exit 1
fi 
function check_perm()
{
    		local perm=""
		perm=`ls -l $filename | cut -d '-' -f 2 | cut -b 1,2,3`
		echo "User $username has $perm permissions on $filename"        
}
check_perm
