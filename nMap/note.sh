ip route show | grep default
# default via 192.168.0.1 dev wlan0 proto dhcp src 192.168.0.108 metric 600
nmap -sn 192.168.0.1/24
# Starting Nmap 7.99 ( https://nmap.org ) at 2026-06-06 02:17 +0100
# Nmap scan report for 192.168.0.1
# Host is up (0.0030s latency).
# Nmap scan report for dellarch (192.168.0.108)
# Host is up (0.000056s latency).
# Nmap scan report for 192.168.0.185
# Host is up (0.048s latency).
# Nmap done: 256 IP addresses (3 hosts up) scanned in 3.01 seconds
sudo nmap -p- --min-rate 2000 192.168.0.185
# Starting Nmap 7.99 ( https://nmap.org ) at 2026-06-06 02:17 +0100
# Nmap scan report for 192.168.0.185
# Host is up (0.032s latency).
# Not shown: 65534 closed tcp ports (reset)
# PORT     STATE SERVICE
# 3770/tcp open  cindycollab
# MAC Address: E0:95:FF:39:D9:6E (Infinix mobility limited)
# Nmap done: 1 IP address (1 host up) scanned in 12.51 seconds
curl http://192.168.0.185:3770
# open document%
