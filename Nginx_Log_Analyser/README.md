# Server Stats Project

This project demonstrates a Bash script (`log_analyser.sh`) that writes a simple tool to analyze logs from the command line.
---

## Requirements

- The script should be named `log_analyser.sh`.
- The script should be executable (`chmod +x log_analyser.sh`).
- The script should read the log file and fetch:
	Top 5 IP addresses with the most requests

	Top 5 most requested paths

	Top 5 response status codes

	Top 5 user agents

---

## Project URL

https://roadmap.sh/projects/nginx-log-analyser

---

## Project Structure

- `log_analyser.sh` → Bash script to analyse logs

- `README.md` → Documentation

---

## Usage

1. Clone the repository and navigate to the folder:

	```bash
	git clone <your-repo-url>
	cd Nginx_Log_Analyser

2. Make the script executable:

    ```bash
    chmod +x log_analyser.sh

3. Run the script with the log directory as an argument:

     ```bash
    ./log_analyser.sh

