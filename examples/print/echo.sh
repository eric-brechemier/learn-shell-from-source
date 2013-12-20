cat <<- doc
	********************************************
	This script illustrates the echo command
	********************************************
doc

echo 'Print just a newline:'
echo

echo "Print 'Hello, World'"
echo 'Hello, World'

echo "Print multiple words as separate arguments: one two three"
echo one two three

echo "Print '--'"
echo --

# The following examples are not portable across POSIX systems.
# In these cases, printf should be used instead.

echo "Print 'Hello, ' and 'World!!' without a newline (implementation-defined)"
echo -n 'Hello, '
echo "World!!\cand the rest is ignored"

echo "Print 'VT', vertical tab, 'FF', form feed"
echo "VT\vFF\f"
echo "Print 'TAB', a TAB, 'CR', CR + LF, 'LF'"
echo "TAB\tCR\r\nLF"

echo "Write an alert (beep sound)"
echo "\a(beep)"

echo "Write AAA then write 3 backspaces to delete"
echo "AAA\c"
echo "\b\b\b\c"

echo "Write a backslash"
echo "\\"

echo "Write ABC using their octal values"
echo "\0101\0102\0103"

