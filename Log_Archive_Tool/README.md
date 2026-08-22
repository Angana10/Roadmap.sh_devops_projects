# Server Stats Project

This project demonstrates a Bash script (`log_archive.sh`) that archives system logs by compressing them into timestamped `.tar.gz` files and storing them in a dedicated directory.

---

## Requirements

- The script should be named `log_archive.sh`.
- The script should be executable (`chmod +x log_archive.sh`).
- The script should run from the command line and accept the log directory as an argument.
- The script should:
  - Compress the logs into a `.tar.gz` file.
  - Store the archive in a new directory (`archived_logs/`).
  - Log the date and time of the archive to the filename.

---

## Project URL

https://roadmap.sh/projects/log-archive-tool

---

## Project Structure

- `log_archive.sh` → Bash script to archive logs

- `archived_logs/` → Directory where compressed archives are stored

- `README.md` → Documentation

---

## Usage

1. Clone the repository and navigate to the folder:

	```bash
	git clone <your-repo-url>
	cd log-archive-tool

2. Make the script executable:

    ```bash
    chmod +x log_archive.sh

3. Run the script with the log directory as an argument:

     ```bash
    ./log_archive.sh /var/log

