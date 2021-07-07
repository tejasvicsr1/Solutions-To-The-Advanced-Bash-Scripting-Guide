# Solution

## Question

Examine the script `question.sh`. Run it, then explain what it does. Annotate the script and reqrite it in a more compact and elegant manner.
***

## Answer

The script finds the solution to the following set of equations:
$$
x (mod 5) = 3
$$
$$
x (mod 7) = 4
$$
$$
x (mod 9) = 5
$$

The answer to this is 158, and it can be found by the **Chinese Remainder Theorem**.

> What happens when you comment the break statement? Why?

When you comment out the break statement, the loop does not terminate mid-way, and only terminates once `nr` becomes equal to `MAX`. The output then becomes 10000.
***

## Annotated Code

The annotated code is:

``` bash
# Shebang line
#!/bin/bash

# Loop max length
MAX=10000

  # For loop that runs from 1 to 10000
  for((nr=1; nr<$MAX; nr++))
  do
    # Checking whether x % 5 = 3
    let "t1 = nr % 5"
    if [ "$t1" -ne 3 ]
    then
      continue
    fi

    # Checking whether x % 7 = 4
    let "t2 = nr % 7"
    if [ "$t2" -ne 4 ]
    then
      continue
    fi

    # Checking whether x % 9 = 5
    let "t3 = nr % 9"
    if [ "$t3" -ne 5 ]
    then
      continue
    fi

  # Breaking the loop when a solution is found.
  break   # What happens when you comment out this line? Why?

  done

  # Printing the result. 
  echo "Number = $nr"

#  Exit statement.
exit 0
```
***

## Rewritten Code

The rewritten code is:

``` bash
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
```
***
