cat <<- END
	*******************************************************************
	This script prints the description and current value of variables
	variables that affect the execution of sh, on two or more lines
	starting with the name of the variable.
	*******************************************************************
END

echo "ENV - path name of a file with commands to execute in current shell"
echo "ENV=$ENV"

echo "FCEDIT - default text editor for fc utility (defaults to ed)"
echo "FCEDIT=$FCEDIT"

echo "HISTFILE - path of commands history file (defaults to ~/.sh_history)"
echo "HISTFILE=$HISTFILE"

echo "HISTSIZE - maximum commands in history file (defaults to 128 or greater)"
echo "HISTSIZE=$HISTSIZE"

echo "HOME - path of the user home directory"
echo "HOME=$HOME"

echo "IFS - list of characters used as delimiters by read utility"
echo "IFS - (defaults to <space> <tab> <newline>)"
echo "IFS=$IFS"

echo "LANG - default locale value for parameters LC_ALL and LC_*"
echo "LANG=$LANG"

echo "LC_ALL - locale value that overrides the value of all LC_* parameters"
echo "LC_ALL=$LC_ALL"

echo "LC_COLLATE - locale used for character collation,"
echo "LC_COLLATE - used in sorting and pattern matching"
echo "LC_COLLATE=$LC_COLLATE"

echo "LC_CTYPE - locale used to identify the type of character sequences,"
echo "LC_CTYPE - used to handle multi-byte sequences and character classes"
echo "LC_CTYPE=$LC_CTYPE"

echo "LC_MESSAGES - locale for the internationalization (i18n) of messages,"
echo "LC_MESSAGES - used to localize messages written to standard error"
echo "LC_MESSAGES=$LC_MESSAGES"

echo "MAIL - path of user mailbox file for incoming emails"
echo "MAIL=$MAIL"

echo "MAILCHECK - interval in seconds between checks for new mails"
echo "MAILCHECK=$MAILCHECK"

echo "NLSPATH - colon-separated list of template paths for message catalogs,"
echo "NLSPATH - used for the internationalization (i18n) of messages"
echo "NLSPATH=$NLSPATH"

echo "PATH - colon-separated list of paths for the lookup of commands"
echo "PATH=$PATH"

echo "PWD - path of the current working directory (may be read-only)"
echo "PWD=$PWD"
