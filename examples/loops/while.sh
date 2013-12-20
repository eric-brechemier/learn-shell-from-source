cat <<- doc
	**************************************
	These examples illustrate while loops.
	**************************************
doc

echo "+ loop with false condition which never runs"
echo "before"
while false
do
  echo "inside (never runs)"
done
echo "after"

echo "+ loop with true condition which runs until explicit break"
echo "before"
i=0
while true
do
  i=$((i + 1))
  echo "inside ($i)"
  if test $i = 10
  then
    break
  fi
done
echo "after"
