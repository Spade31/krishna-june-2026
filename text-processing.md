# Day 4 Tasks


### 1. `grep` - Filtering text lines

* **Usage:** Filters a data stream to display only lines containing the specified keyword.
* **Command:** `echo -e "status: online\nstatus: offline" | grep "offline"`

### 2. `sed` - Finding and replacing text

* **Usage:** Modifies text matching a specific pattern and replaces it with new text in mid-air.
* **Command:** `echo "Server running on port 8080" | sed 's/8080/443/'`

### 3. `awk` - Extracting data columns

* **Usage:** Isolates a specific column from structured text based on a character separator (like a comma).
* **Command:** `echo "App01,10.0.0.1,Active" | awk -F ',' '{print $2}'`

### 4. `>>` - Appending logs safely

* **Usage:** Adds text directly to the bottom of a file without destroying any existing data inside it.
* **Command:** `echo "New event log entry" >> system.log && cat system.log`

### 5. `2> /dev/null` - Suppressing error messages

* **Usage:** Diverts standard error streams to the system's virtual shredder so failed commands fail silently.
* **Command:** `ls /directory/does/not/exist 2> /dev/null`

### 6. `PATH` - Checking program search directories

* **Usage:** Formats the system's binary search list vertically to see exactly where your terminal looks for executables.
* **Command:** `echo $PATH | tr ':' '\n'`