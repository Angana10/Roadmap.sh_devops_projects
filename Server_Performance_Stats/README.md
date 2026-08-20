# Server Stats Project

This project demonstrates a Bash script (`server-stats.sh`) that analyzes basic server performance metrics such as CPU, memory, disk usage, and top processes.

---

## Requirements
- The script should be named `server-stats.sh`.
- The script should be executable (`chmod +x server-stats.sh`).
- The script should run on any Linux server with standard utilities (`ps`, `df`, `free`, `top`, `awk`, `who`, `lastb`).
- The script should output:
  - Total CPU usage
  - Total memory usage (free vs used, with percentage)
  - Total disk usage (free vs used, with percentage)
  - Top 5 processes by CPU usage
  - Top 5 processes by memory usage

**Stretch Goals**
- OS version
- Uptime
- Load average
- Logged-in users
- Failed login attempts

---

## Project URL
https://roadmap.sh/projects/server-stats

---

## Project Structure
- `server-stats.sh` → Bash script to collect and display server stats
- `README.md` → Documentation

---

## Usage

1. Clone the repository and navigate to the folder:
   ```bash
   git clone <your-repo-url>
   cd server-stats

2. Make the script executable
   
   chmod +x server-stats.sh

3. Run the script

   ./server-stats.sh

