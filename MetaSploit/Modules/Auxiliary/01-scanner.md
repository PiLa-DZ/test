# Auxiliary

```bash
# =======================================================================================
# Step 1
msf > search auxiliary

# =======================================================================================
# Step 2
msf > search portscan

# =======================================================================================
# Step 3
msf > use auxiliary/scanner/portscan/tcp

# =======================================================================================
# Step 4
msf auxiliary(scanner/portscan/tcp) > show options

# =======================================================================================
# Step 5
msf auxiliary(scanner/portscan/tcp) > set RHOSTS 192.168.0.199 # NOTE: Target HOST

# =======================================================================================
# Step 6
msf auxiliary(scanner/portscan/tcp) > run
# [+] 192.168.0.199         - 192.168.0.199:22 - TCP OPEN
# [+] 192.168.0.199         - 192.168.0.199:8080 - TCP OPEN
# [*] 192.168.0.199         - Scanned 1 of 1 hosts (100% complete)
# [*] Auxiliary module execution completed

# =======================================================================================
# Step 6
msf auxiliary(scanner/portscan/tcp) > back
# msf >
```
