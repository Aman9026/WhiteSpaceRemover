#!/bin/bash
find . -name '* *' | while read fname 

do
        new_fname=`echo $fname | tr " " "_"`

        if [ -e $new_fname ]
        then
                echo "File $new_fname already exists. Not replacing $fname"
        else
                echo "Creating new file $new_fname to replace $fname"
                mv "$fname" $new_fname
        fi
done
