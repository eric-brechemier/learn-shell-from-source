cat <<- END
	***************************************************************
	This script illustrates that variables in functions are global,
	except positional parameters and parameters set just before the
	function invokation on the same line.
	***************************************************************
END

level1()
{
  echo "level1: variable is: $variable";
  echo "variable=level1"
  variable=level1;
  level2;
  echo "level1: variable is: $variable";
}

level2()
{
  echo "level2: variable is: $variable";
  echo "variable=level2"
  variable=level2;
  level3;
  echo "level2: variable is: $variable";
}

level3()
{
  echo "level3: variable is: $variable";
  echo "variable=level3"
  variable=level3;
  echo "level3: variable is: $variable";
}

echo "Global: variable is: $variable";
echo "variable=global"
variable=global
level1;
echo "Global: variable is: $variable";
