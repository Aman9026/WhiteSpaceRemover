#created on 21JAN2020
#!/bin/bash
find . -name '* *' | while read fname #to read all the files having space in there name

do
        new_fname=`echo $fname | tr " " "_"` #tr is used here to replace space with an underscore

        if [ -e $new_fname ]
        then
                echo "File $new_fname already exists. Not replacing $fname"
        else
                echo "Creating new file $new_fname to replace $fname"
                mv "$fname" $new_fname
        fi
done
