## Team Members
* Hili Piperno
* Selena
* Or Kline

## Project Setup and Execution
1. **Clone the repository:**
   `git clone https://github.com/Afeka-DevTools/26b-10142-bash-selena_helly_or.git`
2. **Navigate to the scripts folder:**
   `cd 26b-10142-bash-selena_helly_or/scripts`
3. **Grant execution permissions:**
   `chmod +x *.sh`

### Hili's Scripts
* **uptime.sh**: Displays the current system uptime.
  * **How to run:** `./uptime.sh`
* **env_vars.sh**: Prints important environment variables.
  * **How to run:** `./env_vars.sh`
* **compare_files.sh**: Compares two given files.
  * **How to run:** `./compare_files.sh <file1> <file2>`
  * **Example:** `./compare_files.sh test1.txt test2.txt`
* **disk_usage.sh**: Shows the disk usage of a directory.
  * **How to run:** `./disk_usage.sh <directory_path>`
  * **Example:** `./disk_usage.sh .`
* **backup_dir.sh**: Creates a compressed backup archive of a given directory.
  * **How to run:** `./backup_dir.sh <source_dir> <backup_file.tar.gz>`
  * **Example:** `./backup_dir.sh my_folder backup.tar.gz`

### Or's Scripts
* **add_prefix.sh**: Adds a user-inputted prefix to all filenames in /prefix_test. Does not add the prefix if it's already included.
  * **How to run:** `./add_prefix.sh <prefix>`
  * **Example:** `./add_prefix.sh in`
* **battery.sh**: Shows current battery level in percentage on your device.
  * **How to run:** `./battery.sh`
* **check_connection.sh**: Checks if your device is connected to the internet.
  * **How to run:** `./check_connection.sh`
* **count_by_suffix.sh**: Looks into /suffix_search_test and counts how many filenames contain the specified suffix.
  * **How to run:** `./count_by_suffix.sh <suffix>`
  * **Example:** `./count_by_suffix.sh ing`
* **countdown.sh**: Initiates a countdown timer based on user input. Format is HH:MM:SS.
  * **How to run:** `./countdown.sh`
