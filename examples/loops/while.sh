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
  if test $i -eq 10
  then
    break
  fi
done
echo "after"

echo "+ loop with true condition which skips even values"
echo "  and runs until explicit break"
echo "before"
i=0
while true
do
  i=$((i + 1))
  if test $(($i % 2)) -eq 0
  then
    # skip even values
    continue
  fi
  echo "inside ($i)"
  if test $i -gt 10
  then
    break
  fi
done
echo "after"

