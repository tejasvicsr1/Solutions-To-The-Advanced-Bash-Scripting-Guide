# Solution

## Question

Examine the script `question.sh` and explain what the script does.
***

## Answer

The script lists all the shell scripts in the `/usr/bin/` directory into a logfile. The `/usr/bin` contains all the executables commands in the system.

**Execution**:
- The `file` command first lists the types of the files in the given directory.
- The `fgrep` command finds from the output of the earlier command whether it contains the phrase _shell script_.
- The `tee` command writes the output of the previous command into the logfile.
- Finally, the `wc` command gives us the number of lines in the logfile, that is, the number of executables present in the system.
***