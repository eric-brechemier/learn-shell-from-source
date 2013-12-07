cat <<- END
	This script illustrates interactions with command history list.
	This feature is not supported in dash.
END

echo "HISTFILE - path to history file (defaults to ~/.sh_history)"
echo "HISTFILE=$HISTFILE"

echo "HISTSIZE - number of previous commands recorded (defaults to 128+)"
echo "HISTSIZE=$HISTSIZE"

historyFile=${HISTFILE:-~/.sh_history}
echo "Is there a shared history file?"
ls "$historyFile"

echo "Are there separate history files per window?"
ls "$HOME/.sh_hist*"

echo "Is fc 'fix command' utility supported?"
type fc

echo "List previous commands"
fc -l

echo "List previous commands, in reverse order"
fc -lr

echo "List commands, without command numbers"
fc -ln
