# Linux Hardening Audit - Lab Notes

## Day 1: Lab Setup, Permissions & Baseline Audit
- **Core Lesson:**
Apply least privilege and basic system hygiene early—understand file ownership and `rwx`/octal permissions,
and establish a clean snapshotted baseline before exposing services or hardening further.

- **Environment & Workflow:**
Worked across WSL(local terminal), the `payza-api` VM (`clean-install` baseline), and OverTheWire Bandit (Levels 0–10)
without needing paid tiers for core fundamentals.

- **Linux & Shell Essentials:**
Practiced navigation (`pwd`, `ls -a`, `cd`, `cat`, `echo`, `whoami`),
SSH & `~/.ssh/config` shortcuts,
handling special/dash/spaced filenames (`./-`, `--`, quoting, `<` redirection),
and inspection/filtering (`file`, `find`, `grep`, `sort | uniq -u`, `strings`, `base64`).

- **Permissions & `perm_check.sh`:**
Used `chmod +x` and a `#!/usr/bin/env bash` shebang to run `find /etc /var -xdev -type f -perm -0002 2>/dev/null`,
targeting world-writable regular files (`-perm -0002`) in `/etc` and `/var` while staying on each starting filesystem (`-xdev`)
and suppressing permission errors (`2>/dev/null`).

- **Version Control:**
Initialized the local `linux-hardening-audit` Git repository, committed `perm_check.sh` and `NOTES.md`,
and pushed to `main` on GitHub.
