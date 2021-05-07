#!/bin/bash

MAX=10000

for((i=1; i<MAX; i++))
do
    let check_1="i % 5"
    let check_2="i % 7"
    let check_3="i % 9"

    if(("$check_1" == 3 && "$check_2" == 4 && "$check_3" == 5))
    then
        break
    fi
done

echo "Number = $i"

exit 0