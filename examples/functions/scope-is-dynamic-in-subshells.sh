cat <<- END
	***************************************************************
	This script illustrates that subshells inherit variables from
	the parent shell and that assignments affect only the subshell.
	***************************************************************
END

sublevel1()
(
  echo "sublevel1: variable is: $variable";
  echo "variable=sublevel1"
  variable=sublevel1;
  sublevel2;
  echo "sublevel1: variable is: $variable";
)

sublevel2()
(
  echo "sublevel2: variable is: $variable";
  echo "variable=sublevel2"
  variable=sublevel2;
  sublevel3;
  echo "sublevel2: variable is: $variable";
)

sublevel3()
(
  echo "sublevel3: variable is: $variable";
  echo "variable=sublevel3"
  variable=sublevel3;
  echo "sublevel3: variable is: $variable";
)

echo "Global: variable is: $variable";
echo "variable=global"
variable=global
sublevel1;
echo "Global: variable is: $variable";
