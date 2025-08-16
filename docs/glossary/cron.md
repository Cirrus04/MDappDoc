### What is Cron?

**Cron** is a time-based job scheduler in Unix-like computer operating systems (including Linux and macOS). It is a daemon, meaning it runs continuously in the background. Its purpose is to automate repetitive tasks by executing scripts or commands at specified intervals (e.g., every night at 2 AM).

Our application relies on **cron** to run the **load.sh** script automatically every day to download the latest financial data.

### What is a Crontab?

A **crontab** (short for "cron table") is a simple text file that contains the schedule of jobs for **cron** to run. Each user on the system can have their own crontab file.

Each line in a crontab file represents a single job and has 2 parts:

1.  The schedule (when to run the job).
2.  The command to execute.

### The Schedule Format

The schedule is defined by five fields, followed by the command:

<pre>
<code>
+----------------------- minute (0 - 59)
|  +-------------------- hour (0 - 23)
|  |  +----------------- day of month (1 - 31)
|  |  | +--------------- month (1 - 12)
|  |  | | +------------- day of week (0 - 6) (Sunday to Saturday)
|  |  | | |   +--------- command_to_execute
|  |  | | |   |
v  v  v v v   v
00 10 * * 2-6 /usr/bin/bash /Users/siren/Sites/MD/SH/load.sh ALL >> /Users/siren/Sites/MD/LOG/logfile.log 2>&1

An asterisk `*` means "every".

<i>The above crontab-entry tells cron to execute the load.sh script at 10:00 Tuesday-Saturday</i>
</code>
</pre>

### How to Edit the Crontab

To edit your user's crontab file, you use the following command in the terminal:

**crontab -e**

This will open the crontab file in your default text editor (like **nano** or **vi**).

### Example
**Changing the Start Time**

Let's say our current cron job runs at 09:00 AM from Tuesday to Saturday:
<pre>
<code>
00 09 * * 2-6 /usr/bin/bash /Users/siren/Sites/MD/SH/load.sh ALL >> /Users/siren/Sites/MD/LOG/logfile.log 2>&1
</code>
</pre>

To change this to run at 11:30 PM every night from Monday to Friday, you would edit the line to be:

<pre>
<code>
30 23 * * 1-5 /usr/bin/bash /Users/siren/Sites/MD/SH/load.sh ALL >> /Users/siren/Sites/MD/LOG/logfile.log 2>&1
</code>
</pre>
After saving and closing the editor, cron will automatically apply the new schedule.

