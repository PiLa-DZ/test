# NMAP Network Mapper

```bash
sudo pacman -S nmap
nmap --version

# -------------------------------------------------------------
# Packet Analysis ***WireShark***
sudo pacman -S wireshark-qt wireshark-cli
# NOTE: If the package is not found,
# ensure the Community repository is enabled in /etc/pacman.conf
# by removing the # comment from the [community] section,
# then run sudo pacman -Sy to sync.
sudo usermod -aG wireshark $USER
sudo chown root:wireshark /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
# -------------------------------------------------------------

ifconfig
```
