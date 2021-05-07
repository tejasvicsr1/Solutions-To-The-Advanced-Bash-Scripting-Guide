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