cat <<- doc
	******************************************************
	This script illustrates substrings before and after

	Memento: on QWERTY keyboards, the key '$' (variable)
	is surrounded by '#' (prefix to remove) on the left
	and '%' (suffix to remove) on the right. Double the
	character to match the longest prefix '##' or the
	longest suffix '%%' respectively.
	******************************************************
doc

string='beforeSTRINGafter'
echo "string: '$string'"

echo "substring after prefix 'before': '${string#before}'"
echo "substring before suffix 'after': '${string%after}'"

echo

string='ABC'
echo "string: '$string'"
echo "substring after any single character: '${string#?}'"
echo "substring before any single character: '${string%?}'"

echo

string='123-456-789'
echo "string: '$string'"
echo "substring after the first '-': '${string#*-}'"
echo "substring before the first '-': '${string%%-*}'"
echo "substring after the last '-': '${string##*-}'"
echo "substring before the last '-': '${string%-*}'"

echo

string='42 red roses'
echo "string: '$string'"
echo "substring after the last digit: '${string##*[0-9]}'"
echo "substring before the first letter: '${string%%[a-zA-Z]*}'"
echo "substring after the first non-digit: '${string#*[!0-9]}'"
echo "substring before the last non-letter: '${string%[!a-zA-Z]*}'"
