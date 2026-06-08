# Enumeration

```bash
# -------------------------------------------------------------
nmap

# -------------------------------------------------------------
msf > db_nmap 192.168.0.199
# [*] Nmap: Starting Nmap 7.99 ( https://nmap.org ) at 2026-06-07 18:17 +0100
# [*] Nmap: Nmap scan report for acerhost (192.168.0.199)
# [*] Nmap: Host is up (0.019s latency).
# [*] Nmap: Not shown: 999 closed tcp ports (conn-refused)
# [*] Nmap: PORT   STATE SERVICE
# [*] Nmap: 22/tcp open  ssh
# [*] Nmap: Nmap done: 1 IP address (1 host up) scanned in 0.27 seconds


msf > db_nmap -sS -O -Pn -sV 192.168.0.199
# [*] Nmap: Starting Nmap 7.99 ( https://nmap.org ) at 2026-06-07 18:24 +0100
# [*] Nmap: Nmap scan report for acerhost (192.168.0.199)
# [*] Nmap: Host is up (0.0045s latency).
# [*] Nmap: Not shown: 999 closed tcp ports (reset)
# [*] Nmap: PORT   STATE SERVICE VERSION
# [*] Nmap: 22/tcp open  ssh     OpenSSH 10.3 (protocol 2.0)
# [*] Nmap: MAC Address: 24:FD:52:B5:BE:3B (Liteon Technology)
# [*] Nmap: No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
# [*] Nmap: TCP/IP fingerprint:
# [*] Nmap: Network Distance: 1 hop
# [*] Nmap: OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# [*] Nmap: Nmap done: 1 IP address (1 host up) scanned in 11.88 seconds

msf > hosts
# Hosts
# =====
# address        mac                name      os_name  os_flavor  os_sp  purpose  info  comments
# -------        ---                ----      -------  ---------  -----  -------  ----  --------
# 192.168.0.1                                 Unknown                    device
# 192.168.0.199  24:fd:52:b5:be:3b  acerhost  Linux               4.X    server


msf > services
# Services
# ========
# host           port  proto  name     state     info                       resource  parents
# ----           ----  -----  ----     -----     ----                       --------  -------
# 192.168.0.1    22    tcp    ssh      filtered                             {}
# 192.168.0.1    53    tcp    domain   open                                 {}
# 192.168.0.1    80    tcp    http     open                                 {}
# 192.168.0.1    5555  tcp    freeciv  filtered                             {}
# 192.168.0.108  22    tcp    ssh      open                                 {}
# 192.168.0.108  3306  tcp    mysql    open                                 {}
# 192.168.0.199  22    tcp             open                                 {}
# 192.168.0.199  22    tcp    ssh      open      OpenSSH 10.3 protocol 2.0  {}
# 192.168.0.199  2345  tcp             open                                 {}
# 192.168.0.199  8080  tcp             open                                 {}


msf > services -h
# Usage: services [-h] [-u] [-a] [-r <proto>] [-p <port1,port2>] [-s <name1,name2>] [-o <filename>] [addr1 addr2 ...]
# OPTIONS:
#     -a, --add                  Add the services instead of searching.
#     -c, --column <col1,col2>   Only show the given columns.
#     -d, --delete               Delete the services instead of searching.
#     -h, --help                 Show this help information.
#     -O, --order <column id>    Order rows by specified column number.
#     -o, --output <filename>    Send output to a file in csv format.
#     -p, --port <ports>         Search for a list of ports.
#     -r, --protocol <protocol>  Protocol type of the service being added [tcp|udp].
#     -R, --rhosts               Set RHOSTS from the results of the search.
#     -s, --name <name>          Name of the service to add.
#     -S, --search <filter>      Search string to filter by.
#     -u, --up                   Only show services which are up.
#     -U, --update               Update data for existing service.
# Available columns: created_at, info, name, port, proto, state, updated_at

msf > services -c port,name
# Services
# ========
# host           port  name     resource  parents
# ----           ----  ----     --------  -------
# 192.168.0.1    22    ssh      {}
# 192.168.0.1    53    domain   {}
# 192.168.0.1    80    http     {}
# 192.168.0.1    5555  freeciv  {}
# 192.168.0.108  22    ssh      {}
# 192.168.0.108  3306  mysql    {}
# 192.168.0.199  22             {}
# 192.168.0.199  22    ssh      {}
# 192.168.0.199  2345           {}
# 192.168.0.199  8080           {}
```
