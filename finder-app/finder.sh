#!/bin/bash
if [ $1 ] && [ $2 ];
then
    if [ -d $1 ];
    then
        nfiles=$(find $1 -type f | wc -l)
        nmatches=$(grep -r  $2 $1 | wc -l)
        echo "The number of files are $nfiles and the number of matching lines are $nmatches"
    else
       echo "$1 is not a directory";
       exit 1;
    fi;
else
    echo " arg 1 and/or arg 2 not specified"
	exit 1
fi

