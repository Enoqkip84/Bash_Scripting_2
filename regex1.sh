#!/bin/bash

input=$1

# check if argument was provided
if [ $# -ne 1 ]
then
    echo "Invalid! You may not enter."
    exit 1
fi

# rule 1 - exactly 8 characters
if [ ${#input} -ne 8 ]
then
    echo "Invalid! You may not enter."
    exit 1
fi

# rule 2 - at least 3 digits
digit_count=$(echo "$input" | grep -o "[0-9]" | wc -l)

if [ "$digit_count" -lt 3 ]
then
    echo "Invalid! You may not enter."
    exit 1
fi

# rule 3 - at least one uppercase letter
if ! [[ "$input" =~ [A-Z] ]]
then
    echo "Invalid! You may not enter."
    exit 1
fi

# rule 4 - at least one lowercase letter
if ! [[ "$input" =~ [a-z] ]]
then
    echo "Invalid! You may not enter."
    exit 1
fi

# all rules passed
echo "Valid! You may enter."

exit 0