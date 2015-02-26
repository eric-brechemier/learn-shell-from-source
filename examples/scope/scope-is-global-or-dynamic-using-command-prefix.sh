cat <<- END
	*****************************************************************
	This script illustrates that variables assigned in command prefix
	are global when the command is empty (i.e. a regular asssignment),
	a special built-in (break, :, continue, ., eval, exec, exit, export,
	readonly, return, set, shift, times, trap, unset) or a function call,
	and are dynamic otherwise: regular built-in, utility, script, etc.
	*****************************************************************
END

start()
{
  variable=global
  echo "Global: variable='$variable'"
}

end()
{
  if test "$variable" = "global"
  then
    scope='dynamic' # back to global after assignment
  else
    scope='global' # assignment persisted and replaced global value
  fi
  echo "Global: variable='$variable' (scope is $scope)"
  echo
}

function_call()
{
  echo "function_call: variable is: '$variable'";
}

echo "An empty command is a global assignment:"
start
variable='empty command'
end

echo "An assignment as a prefix of a special built-in is a global assignment (dash)"
echo "Note: bash differs here, and performs a dynamic assignment"
start
variable='special built-in' eval \
  echo "\"special built-in: variable is: '\$variable'\""
end

echo "An assignment as prefix of a function is a global assignment (dash)"
echo "Note: bash differs here again, and performs a dynamic assignment"
start
variable='function call' function_call;
end

echo "An assignment as prefix of a regular built-in is a dynamic assignment"
start
variable='regular built-in' command ./script.sh
end

echo "An assignment as a prefix of a utility is a dynamic assignment"
start
echo | variable='utility' xargs ./script.sh
end

echo "An assignment as a prefix of a script invocation is a dynamic assignment"
start
variable='script' ./script.sh
end

