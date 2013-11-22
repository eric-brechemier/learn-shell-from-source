Learn Shell from Source
=======================

The Saga of Code is a series of experiments for programmers
to learn a language by:

1. reading an authoritative specification and
   writing short examples of code to illustrate the specification

2. running the examples using an open source implementation
   and reading the source code to understand observed behaviors

In the first episode of the series, I learn Unix Shell programming
from [POSIX Shell and Utilities specification][POSIX_SHELL]
and the source code of [DASH][].

[POSIX_SHELL]: http://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html
[DASH]: http://gondor.apana.org.au/~herbert/dash/

## RECOMMENDED READING ORDER ##

The specification is intended for implementers rather than users of
the Shell programming language. It describes border cases, parsing tokens
and undefined effects left to the freedom of the implementer in minute details
without providing an overview of the language.

I recommend the following reading order to start with the most general
aspects of the language and uncover finer details step by step:

* [2.1 Shell Introduction]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_01)

* [1.4 Utility Description Defaults]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_04)

* [sh - shell, the standard command language interpreter]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html#tag\_20\_117)

* [1.3 Grammar Conventions]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_03)

* [2.4 Reserved Words]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_04)

* [2.10 Shell Grammar]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_10)

* [2.9 Shell Commands]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_09)

* [2.13. Pattern Matching Notation]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_13)

* [2.5 Parameters and Variables]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_05)

* [2.6 Word Expansions]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_06)

* [echo - write arguments to standard output]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html#tag\_20\_37)

* [printf - write formatted output]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/printf.html#tag\_20\_94)

* [cat - concatenate and print files]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/cat.html#tag\_20\_13)

* [true - return true value]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/true.html#tag\_20\_133)

* [false - return false value]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/false.html#tag\_20\_43)

* [test - evaluate expression]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/test.html#tag\_20\_128)

* [expr - evaluate arguments as an expression]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/expr.html#tag\_20\_42)

* [getopts - parse utility options]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/getopts.html#tag\_20\_54)

* [read - read a line from standard input]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/read.html#tag\_20\_109)

* [2.7 Redirection]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_07)

* [2.2 Quoting]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_02)

* [2.3 Token Recognition]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_03)

* [2.14. Special Built-In Utilities]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_14)

* [2.8 Exit Status and Errors]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_08)

* [2.11. Signals and Error Handling]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_11)

* [1.6 Built-In Utilities]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_06)

* [2.12 Shell Execution Environment]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap02.html#tag\_18\_12)

* [4. Utilities]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap04.html#tag\_20)

* [1.2 Utility Limits]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_02)

* [1.5 Considerations for Utilities in Support of Files of Arbitrary Size]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_05)

* [1.1 Relationship to Other Documents]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap01.html#tag\_17\_01)

* [3. Batch Environment Services (obsolescent)]
(http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3\_chap03.html#tag\_19)

## AUTHOR ##

Eric Bréchemier  
github@eric.brechemier.name

## LICENSE ##

CC0  
https://creativecommons.org/publicdomain/zero/1.0/
