```bash
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service
sudo systemctl status postgresql.service

msfdb
# Commands:
#   init     initialize the component
#   reinit   delete and reinitialize the component
#   delete   delete and stop the component
#   status   check component status
#   start    start the component
#   stop     stop the component
#   restart  restart the component



msf > help database
# Database Backend Commands
# =========================
#
#     Command           Description
#     -------           -----------
#     analyze           Analyze database information about a specific address or address range
#     certs             List Pkcs12 certificate bundles in the database
#     db_connect        Connect to an existing data service
#     db_disconnect     Disconnect from the current data service
#     db_export         Export a file containing the contents of the database
#     db_import         Import a scan result file (filetype will be auto-detected)
#     db_nmap           Executes nmap and records the output automatically
#     db_rebuild_cache  Rebuilds the database-stored module cache (deprecated)
#     db_remove         Remove the saved data service entry
#     db_save           Save the current data service connection as the default to reconnect on startup
#     db_stats          Show statistics for the database
#     db_status         Show the current data service status
#     hosts             List all hosts in the database
#     klist             List Kerberos tickets in the database
#     loot              List all loot in the database
#     notes             List all notes in the database
#     services          List all services in the database
#     vulns             List all vulnerabilities in the database
#     workspace         Switch between database workspaces


msf > db_status
# [*] Connected to msf. Connection type: postgresql.

msf > workspace
  # default

msf > workspace -h
# Usage:
#     workspace          List workspaces
#     workspace [name]   Switch workspace
#
# OPTIONS:
#
#     -a, --add <name>          Add a workspace.
#     -d, --delete <name>       Delete a workspace.
#     -D, --delete-all          Delete all workspaces.
#     -h, --help                Help banner.
#     -l, --list                List workspaces.
#     -r, --rename <old> <new>  Rename a workspace.
#     -S, --search <name>       Search for a workspace.
#     -v, --list-verbose        List workspaces verbosely.

msf > workspace -v
# Workspaces
# ==========
# current  name     hosts  services  vulns  creds  loots  notes
# -------  ----     -----  --------  -----  -----  -----  -----
#          default  1      3         0      0      0      0
# *        nabil    0      0         0      0      0      0

```
