# Install Metasploit Framework

The core package is available in the Arch `extra` repository.

```bash
# Install
sudo pacman -S metasploit
sudo pacman -S postgresql
# Active
sudo systemctl restart postgresql
systemctl status postgresql
sudo -u postgres initdb -D /var/lib/postgres/data --auth=trust
msfdb init
# Test
ls /opt/metasploit/
msfconsole
db_status
search type:exploit platform:android
```
