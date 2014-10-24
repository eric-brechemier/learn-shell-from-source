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

IFS=":$IFS"
echo 'Join with colon as delimiter'
result=$*
echo "result: '$result'"

echo

IFS=','
echo 'Join with comma as delimiter'
result=$*
echo "result: '$result'"

echo

IFS=''
echo 'Join without delimiter'
result=$*
echo "result: '$result'"

echo

echo 'Restore default, join with space as delimiter'
unset IFS
result=$*
echo "result: '$result'"
