#! /bin/false
cat <<- END
	********************************************************************
	This script illustrates the behavior of dash with regards
	to a first line starting with a shebang '#!':

	1) the line is treated like a regular comment (ignored)
	when the script is provided directly to dash:

	$ dash script-with-shebang.sh

	2) when the script is loaded by another script, the execution
	is handed down to the system function execve() called by tryexec()
	in exec.c, which runs the script in the specified interpreter.
	In this case, the script does not run:

	# shell script or interactive shell
	./script-with-shebang.sh

	More details are available in the manual page for execve:
	$ man execve
	********************************************************************
END
echo "The shebang in this script requires to run nothing and fail: /bin/false"
echo "If this script runs, it means the shebang line has been ignored."
