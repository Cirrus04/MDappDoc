### What is nano?

**nano** is a simple, beginner-friendly, text-based editor for the command line. When you need to edit a configuration file directly on your VPS (for example, via SSH), nano is often the easiest and most intuitive tool to use.
Unlike more complex editors, its most important commands are always displayed at the bottom of the screen, making it easy to remember how to save and exit.

#### Essential Commands
- Open or Create a File:
    - **nano /path/to/file.txt**
- Save Changes:
    - Press **Ctrl + O** (for "Write Out"). You will be prompted to confirm the filename; just press Enter.
- Exit nano:
    - Press **Ctrl + X** (for "Exit"). If you have unsaved changes, it will ask if you want to save them.
- Cut a Line:
    - Place the cursor on the line and press **Ctrl + K**.
- Paste a Line:
    - Move the cursor to the desired location and press **Ctrl + U**.
- Search the File:
    - Press **Ctrl + W** (for "Where is"). Type your search term and press **Enter**.

### What is vi / vim?

**vi** (and its modern, extended version, **vim** - for "Vi IMproved") is a highly powerful, text-based editor found on nearly every Unix-like system. It is renowned for its efficiency, allowing users to perform all actions without moving their hands from the keyboard.

vi is "**modal**", meaning it operates in different modes. The two most important are:

- **Normal Mode**: This is the default mode when you open a file. In this mode, keys are not for typing text but for issuing commands (like moving the cursor, deleting text, copying, and pasting).
- **Insert Mode**: In this mode, you can type and edit text like in a normal text editor.

This modal nature can be confusing for new users. The most common question from beginners is: "_How do I quit vi?_"

#### Essential Commands (from Normal Mode):

- Open or Create a File:
    - **vi /path/to/file.txt**
- Switch to Insert Mode:
    - Press **i** to begin inserting text at the cursor's position.
- Return to Normal Mode:
    - Press the **Esc** key. If you're ever unsure which mode you're in, press Esc a few times.
- Saving and Quitting (from Normal Mode):
    - You type a colon (**:**) followed by command characters.
        - **:w** - write (save the file).
        - **:q** - quit (exit).
        - **:wq** - Save and quit.
        - **:q!** - Quit without saving changes (force quit).
- Basic Editing (from Normal Mode):
    - **x** - Delete the character under the cursor.
    - **dd** - Delete the entire current line.
    - **yy** - Copy (yank) the entire current line.
    - **p** - Paste the copied/deleted text after the cursor.
- Search the File (from Normal Mode):
    - Press **/** followed by your search term and Enter.
    - Press **n** to go to the next match.
