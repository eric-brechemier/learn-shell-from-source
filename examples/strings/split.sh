cat <<- doc
	****************************************************
	This script illustrates string splitting into fields
	using IFS (Internal Field Separator).
	****************************************************
doc

string='AAA	BBB	CCC
		  1	,	2,	3	,	4,, 6 ,,   8   	
1;2;3;4;5;6;7;8;9
one,two,three'
echo "string='$string'"

echo

echo 'Split string on space-tab-newline (default) into positional parameters'
set $string
echo 'Split:' $*
i=1
for item in $*
do
  echo "$i: '$item'"
  i=$((i+1))
done

echo

echo 'Discard first positional parameter'
shift 1
echo 'Split-1:' $*

echo

echo 'Disable splitting and expand string again'
IFS=''
echo "IFS='$IFS'"
set $string
echo 'No Split:' $*

echo

echo 'Split string on newlines only, then loop and split on comma-tab-semicolon'
IFS='
'
set $string
for line
do
  IFS=',	;'
  set $line
  echo 'Line:' $*
  i=1
  for field in $*
  do
    echo "$i: '$field'"
    i=$((i+1))
  done
done

echo

echo 'Restore default IFS behavior (unset IFS)'
unset IFS

echo 'Split string on space-tab-newline (default)'
echo 'Split:' $string
