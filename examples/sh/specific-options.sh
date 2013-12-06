cat <<- END
	**************************************************************
	This script illustrates specific options of the sh command,
	which correspond to different ways to provide commands to run.
	**************************************************************
END

command='echo run command'

echo 'Run a command with sh -c command'
sh -c "$command"

echo 'Run commands provided from standard input with sh -s'
echo "$command" | sh -s

echo 'Run commands provided from standard input (this is also the default)'
echo "$command" | sh

echo 'Switch to the directory of the script'
cd $(dirname $0)

echo 'Run a command file, providing file name as parameter'
sh command-file.sh

echo 'Run a command file read from standard input, providing - as parameter'
cat command-file.sh | sh -

echo 'Run an interactive shell with sh -i (type exit to quit)'
sh -i
