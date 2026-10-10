DS1202 Project: System Information Script

1. Project Overview

This project was created for the DS1202 ICT Infrastructure Basics assessment. It demonstrates Linux server access, Bash scripting, file permissions, and Git version control.

The `scripts/sysinfo.sh` script collects and displays basic system information, including the hostname, operating system and kernel details, memory usage, disk usage, current date and time, and system uptime. It also records system information in a log file.

2. Project Directory Structure

The project uses the following directory structure:

```text
ds1202-project/
├── scripts/
│   └── sysinfo.sh
├── docs/
├── logs/
│   └── sysinfo.log
└── README.md
```

- `scripts/`: Contains the system information script.
- `docs/`: Stores project documentation and supporting files.
- `logs/`: Stores the output recorded by the script.
- `README.md`: Explains the project and its usage.

3. Setup Instructions

Step 1: Generate an SSH Key

An Ed25519 SSH key was generated to enable secure, passwordless access to the remote server. A separate SSH key can be used for GitHub authentication.

```bash
ssh-keygen -t ed25519 -C "26FTT1102@student.pb.edu.bn"
```

The public key must be added to the appropriate authorized keys or account settings. Private keys must be kept secure and never shared.

Step 2: Log In to the Server

Connect to the college server using SSH:

```bash
ssh 26FTT1102@iib.politeknikbrunei.com
```

Replace `your_username` and `your_server` with the assigned login details.

Step 3: Create the Project Directories

```bash
mkdir -p ~/ds1202-project/{scripts,docs,logs}
```


Step 4: Set Directory Permissions

```bash
chmod 755 ~/ds1202-project
```

Permission `755` allows the owner to read, write, and execute within the directory, while other users can read and access it.

Step 5: Run the Script

Make the script executable:

```bash
chmod +x ~/ds1202-project/scripts/sysinfo.sh
```

4. How to Run the Script

Navigate to the project directory:

```bash
cd ~/ds1202-project
```

Run the script:

```bash
./scripts/sysinfo.sh
```

The script displays system information in the terminal and records the output in `logs/sysinfo.log`.

To view the saved log:

```bash
cat logs/sysinfo.log
```

5. Git Workflow

The following Git workflow was used to manage the project:

1. Initialize the Git repository and add the project files.
2. Commit the initial directory structure and system information script.
3. Create the `feature-logging` branch to enhance the script with logging and additional system information.
4. Commit the changes made on the feature branch.
5. Merge `feature-logging` into `main`.
6. Create a public GitHub repository and configure it as the remote repository.
7. Push the `main` and `feature-logging` branches to GitHub.

Useful Git commands:

```bash
git status
git add .
git commit -m "Describe the changes"
git switch -c feature-logging
git switch main
git merge feature-logging
git log --graph --oneline --all
git push -u origin main
git push -u origin feature-logging
```

6. Evidence PDF Screenshot List

The evidence PDF should contain the following screenshots:

1. SSH key generation output.
2. Successful passwordless SSH login to the college server.
3. Project directory structure and permissions, shown using `ls -la`.
4. Enhanced `sysinfo.sh` script output after merging the feature branch.
5. Git commit history, shown using `git log --graph --oneline --all`.

7. Conclusion

This project demonstrates secure SSH access, basic Linux system administration, Bash scripting, file permissions, and Git branching, merging, and remote repository management.
