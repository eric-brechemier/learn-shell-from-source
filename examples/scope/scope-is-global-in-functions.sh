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
  echo "variable1=level1"
  variable1=level1;
  level2;
  echo "level1: variable is: $variable";
  echo "level1: variable1 is: $variable1";
  echo "level1: variable2 is: $variable2";
  echo "level1: variable3 is: $variable3";
}

level2()
{
  echo "level2: variable is: $variable";
  echo "variable=level2"
  variable=level2;
  echo "variable2=level2"
  variable2=level2;
  level3;
  echo "level2: variable is: $variable";
  echo "level2: variable1 is: $variable1";
  echo "level2: variable2 is: $variable2";
  echo "level2: variable3 is: $variable3";
}

level3()
{
  echo "level3: variable is: $variable";
  echo "variable=level3"
  variable=level3;
  echo "variable3=level3"
  variable3=level3;
  echo "level3: variable is: $variable";
  echo "level3: variable1 is: $variable1";
  echo "level3: variable2 is: $variable2";
  echo "level3: variable3 is: $variable3";
}

echo "Global: variable is: $variable";
echo "variable=global"
variable=global
level1;
echo "Global: variable is: $variable";
echo "Global: variable1 is: $variable1";
echo "Global: variable2 is: $variable2";
echo "Global: variable3 is: $variable3";
