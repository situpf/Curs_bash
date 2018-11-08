#!/bin/bash

if [[ $1 -gt 4 ]] && [[ $1 -lt 8 ]]
then
echo "$1 is between 4 and 8"
elif [[ $1 =~ "Juanma" ]] || [[ $1 =~ "Marc" ]]
then
echo "$1 is here"
else
echo "You entered: $1, not what I was looking for."
fi

