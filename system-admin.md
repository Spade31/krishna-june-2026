# Day 3 Tasks
***processes and the system management commands***


ps aux - Takes a complete snapshot of every active running process across all users on the entire operating system.

top/htop - Launches an interactive, real-time live performance dashboard tracking CPU cores, memory utilization, and running tasks(htop is an updated version)

nice - Used to set priority to other applications by the user himself.The scale runs exactly from -20 (Highest priority/Selfish) to 19 (Lowest priority/Polite). Default value is 0.

jobs - Once a process is running, jobs controls where it sits inside your current terminal window. It is your local session coordinator.

Workflow Switches:

&: Puts it in the background at launch.

Ctrl + Z: Pauses it instantly when it takes over your terminal.

bg: Tells that paused task to start running again, but stay out of sight.

fg: Reels it back to your screen.

journalctl - as the name suggests it is used to log in the files where it shows every error ,every usage etc. Basically it log's every service available
