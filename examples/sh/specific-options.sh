cat <<- END
	This script illustrates specific options of the sh command,
	which correspond to different ways to provide commands to run.
END

command='echo run command'

echo 'Run a command with sh -c command'
sh -c "$command"

echo 'Run commands provided from standard input with sh -s'
echo "$command" | sh -s

echo 'Run commands provided from standard input (this is also the default)'
echo "$command" | sh

echo 'Run an interactive shell with sh -i (type exit to quit)'
sh -i
