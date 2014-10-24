cat <<- doc
	****************************************************
	This script illustrates string splitting into fields
	using IFS (Internal Field Separator).
	****************************************************
doc

string='A B	C
D	E F'
echo "string='$string'"

echo

echo 'Split string on space-tab-newline (default) into positional parameters'
set $string
echo 'Split:' $*

echo 'Discard first positional parameter'
shift 1
echo 'Split-1:' $*

echo

echo 'Disable splitting'
IFS=''
echo "IFS='$IFS'"
set $string
echo 'No Split:' $*

echo

echo 'Restore default IFS behavior (unset IFS)'
unset IFS

echo 'Split string on space-tab-newline (default)'
echo 'Split:' $string
