### What is Bash?</span>__

Bash which stands for **B**ourne-**A**gain **SH**ell is a command-line interpreter, or "shell," for Unix-like operating systems. It is the program that runs in your terminal, reads the commands you type, and tells the operating system what to do.
Think of it as the primary way to interact with the operating system using text-based commands instead of a graphical user interface (GUI).
### What is a "Shell Script"?</span>__

A shell script is simply a plain text file containing a series of commands that could be typed one by one in the terminal. When you run the script, the shell (Bash) reads the file and executes the commands in sequence.
This is extremely powerful for **automation**. All the data loading and processing for this project is managed by a Bash script (load.sh), which in turn calls other programs like php and mysql.

### Key Concepts</span>__

__Commands__: Simple programs like ls (list files), cd (change directory), cp (copy), and mv (move).<br>
__Scripts (.sh files)__: A collection of commands saved to a file to automate a task.<br>
__Variables__: Used to store data, like exchange="ST".<br>
__Loops (for, while)__: Used to repeat actions, like processing every file in a directory or every line in a list.<br>
__Conditionals (if/then/else)__: Used to make decisions and run different commands based on certain conditions.<br>
__Pipelines (|)__: A powerful feature that allows you to send the output of one command as the input to another command (e.g., grep "ERROR" logfile.log | wc -l to count the number of error lines in a log file).

In the context of this project, Bash is the "glue" that orchestrates the entire data processing workflow, from downloading data with PHP to executing complex SQL queries with the mysql client.