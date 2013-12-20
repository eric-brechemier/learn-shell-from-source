cat <<- doc
	**************************************
	These examples illustrate until loops.
	**************************************
doc

echo "+ loop with true condition which never runs"
echo "before"
until true
do
  echo "inside (never runs)"
done
echo "after"

echo "+ loop with false condition which runs until explicit break"
echo "before"
i=0
until false
do
  i=$((i + 1))
  echo "inside ($i)"
  if test $i = 10
  then
    break
  fi
done
echo "after"
