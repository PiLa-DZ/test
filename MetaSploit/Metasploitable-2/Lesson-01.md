# Reconnaissance & Information Gathering (Recon)

Active Reconnaissance
Ping Sweep

```bash
msfconsole -q
```

```bash msfconsole
workspace -a Lesson-1
db_nmap -sn 192.168.0.0/24
hosts
```

Port Scanning

```bash
db_nmap -p- -sV 192.168.0.167
services
```
