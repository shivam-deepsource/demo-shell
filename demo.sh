#!/bin/bash
# Demo shell issues

# Unescaped `$` used in a literal context
echo "$"

# Found 'eof' further down, but not on a separate linecat <<-eof
Hello World
-eof

# Assigning to a dynamically created variable
n=1
var$n="hello"

# Wrong way of declaring parameters
foo(input) {
  echo "$input"
}
foo("hello world");

# `[ .. ]` is not a part of shell syntax
if [ grep -q pattern file ]
then
  echo "Found a match"
fi

# Single quote not escaped properly
echo 'This is not how it\'s done'.

# backslash / linefeed is a literal where it is used
var='This is long \
piece of text'
