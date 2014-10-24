cat <<- doc
	****************************************************
	This script shows how to get the length of a string
	****************************************************
doc

string='0123456789'
echo "string=$string"
echo "length=${#string}"

string='ABC'
echo "string=$string"
echo "length=${#string}"
