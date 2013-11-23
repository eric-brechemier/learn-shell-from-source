cat <<- END
	***************************************************************
	This script does not start with a shebang '#!'.
	POSIX specifications states that:
	"If the first line of a file of shell commands
	starts with the characters "#!", the results are unspecified."
	***************************************************************
END
echo "Running $0";
