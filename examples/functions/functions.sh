cat <<- doc
	***************************************************************
	These examples illustrate function declarations and calls.
	***************************************************************
doc

# Various forms of function definitions

function1() echo 'Function 1 called'

function2()
echo 'Function 2 called'

function3() { echo 'Function 3 called'; }

function4() {
  echo 'Function 4 called'
}

function5()
{
  echo 'Function 5 called'
}

function6()
(
  # runs in a subshell
  echo 'Function 6 called'
)

function7() return

function8() return 0

function9() return 1

function10() { false; return; }

function11() { true; return; }

# invocation of previously defined functions
function1
function2
function3
function4
function5
function6
function7 && echo "Function 7 succeeded"
function8 && echo "Function 8 succeeded"
function9 || echo "Function 9 failed"
function10 || echo "Function 10 failed"
function11 && echo "Function 11 succeeded"

