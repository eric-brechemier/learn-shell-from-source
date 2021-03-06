cat <<- doc
	*************************************************************
	These examples illustrate for loops.
	
	Note:
	the value of the variable used as loop iterator persists
	after the loop, including when reused in subsequent loops.
	*************************************************************
doc

echo "+ Loop on positional parameters"
echo "before: item=$item"
set -- '1 one' '2 two' '3 three'
for item
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on positional parameters, provided as \$@ (unquoted)"
for item in $@
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on positional parameters, provided as \"\$@\" (quoted)"
for item in "$@"
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on positional parameters, provided as \$* (unquoted)"
for item in $*
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on positional parameters, provided as \"\$*\" (quoted)"
for item in "$*"
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on the same list of words provided as literals"
echo "before: item=$item"
for item in one two three
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on the same list of words provided as a parameter to expand"
echo "before: item=$item"
list="one two three"
for item in $list
do
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Loop on the same list of words using a custom character as delimiter"
echo "before: item=$item"
list="one#two#three"
IFS='#'
for item in $list
do
  echo "inside: item=$item"
done
echo "after: item=$item"
unset IFS

echo "+ Loop with no item to process"
echo "before: item=$item"
for item in
do
  echo "inside: item=$item (never runs)"
done
echo "after: item=$item"

echo "+ Loop on files in current folder: $(pwd)"
echo "before: file=$file"
for file in *
do
  echo "inside: file=$file"
done
echo "after: file=$file"

echo "+ Break from loop when item is '42'"
echo "before: item=$item"
for item in 40 41 42 43 44
do
  echo "inside: item=$item"
  if test $item = 42
  then
    break
  fi
done
echo "after: item=$item"

echo "+ Break from a parent loop when item is '42' in a nested loop"
echo "before: item=$item"
for digit1 in 3 4 5
do
  for digit2 in 0 1 2 3 4 5 6 7 8 9
  do
    item="$digit1$digit2"
    echo "inside: item=$item"
    if test $item = 42
    then
      break 2
    fi
  done
done
echo "after: item=$item"

echo "+ Skip item '42' and continue"
echo "before: item=$item"
for item in 40 41 42 43 44
do
  if test $item = 42
  then
    continue
  fi
  echo "inside: item=$item"
done
echo "after: item=$item"

echo "+ Continue in parent loop when item is '42' in a nested loop"
echo "before: item=$item"
for digit1 in 3 4 5
do
  for digit2 in 0 1 2 3 4 5 6 7 8 9
  do
    item="$digit1$digit2"
    echo "inside: item=$item"
    if test $item = 42
    then
      # Note: this is equivalent to 'break' or 'break 1' here
      continue 2
    fi
  done
done
echo "after: item=$item"
