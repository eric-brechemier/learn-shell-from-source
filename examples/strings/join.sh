cat <<- doc
	****************************************************
	This script illustrates expansion of fields into a
	variable to join strings using the first character
	of IFS (Internal Field Separator) as delimiter.
	****************************************************
doc

list='one two three'
echo "list='$list'"
echo 'Split into positional parameters'
set $list

echo

echo 'Join with space as delimiter (default)'
result=$*
echo "result: '$result'"

echo

echo 'Join with colon as delimiter'
IFS=":$IFS"
result=$*
echo "result: '$result'"

echo

echo 'Join with comma as delimiter'
IFS=','
result=$*
echo "result: '$result'"

echo

echo 'Join without delimiter'
IFS=''
result=$*
echo "result: '$result'"

echo

echo 'Restore default, join with space as delimiter'
unset IFS
result=$*
echo "result: '$result'"
