cat <<- doc
	*************************************************
	This script illustrates string concatenation

	Note: there is no specific operator or function
	involved in string concatenation; instead it is
	performed by expanding parameters (variables)
	into a new string.
	*************************************************
doc

from='Start'
echo "from=$from"
to='End'
echo "to=$to"
result="$from$to"
echo "result=$result"
