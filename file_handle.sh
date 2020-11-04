#!/bin/bash

File="F:/DTL Lab/shell/calc.sh"


if [ -r $File ]
then
	echo "This file is readable"
else
	echo "This is not readable"
fi

if [ -w $File ]
then
        echo "This file is writable"
else
        echo "This is not writable"
fi

if [ -d $File ]
then
	echo "It is a directory"
else
	echo "It is not a directory"
fi

if [ -e $file ]
then
	echo "This file exists"
else
	echo "This file doesn't exist"
fi
if [ -x $file ]
then
        echo "This file is executable"
else
        echo "This file is not executable"
fi
if [ -f $file ]
then
        echo "This file is an ordinary file"
else
        echo "This file is a apecial file"
fi


