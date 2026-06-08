# 1. Checking Database Activity Inside Metasploit

When you are actively running scans or attacks inside `msfconsole`,
Metasploit automatically populates tables for you.
You don't need raw SQL to view them; Metasploit provides built-in wrapper commands.

Launch `msfconsole` and try these commands:

- **`hosts`**:
  Displays every unique IP address Metasploit has discovered
  or interacted with in your Phase 1 and Phase 2 simulations.

- **`services`**:
  Shows a clean table of all open ports, protocols,
  and grabbed service banners across all hosts.

- **`vulns`**:
  Lists all confirmed vulnerabilities discovered
  on your target machines after running vulnerability scans.

- **`creds`**:
  Displays any cleartext passwords, hashes,
  or tokens intercepted or cracked during your simulations.

---

## 2. Managing Environments via "Workspaces"

Instead of deleting your entire database when you want to start a new simulation,
Metasploit uses a feature called **Workspaces**.
Think of workspaces like git branches or isolated database schemas.

Inside `msfconsole`:

- **List all workspaces:**

```text
workspace
```

- **Create and switch to a new project workspace:**

```text
workspace -a MyPhoneSimulation

```

_Now, any new host, port, or vulnerability you discover will be cleanly isolated inside this workspace without cluttering your other lab data._

- **Delete a workspace (and wipe all its collected data):**

```text
workspace -d MyPhoneSimulation

```

---

## 3. The Hard Reset: Deleting and Recreating the Database

If you want to completely destroy the database structure,
wipe everything, and start fresh from scratch,
you can do it directly from your regular Arch Linux terminal (outside of `msfconsole`).

Run these commands in order:

```bash
# 1. Stop and delete the existing Metasploit database configuration
msfdb delete

# 2. Re-initialize a brand new database with fresh tables and credentials
msfdb init

```

---

## 4. Viewing the Raw PostgreSQL Logs (Seeing What's Happening)

Since you want to know exactly what is happening in the background,
you can monitor the raw PostgreSQL engine.
If Metasploit reads or writes data, the database daemon logs it.

Because you are on Arch Linux running `systemd`,
you can stream the live database server logs directly into your terminal using `journalctl`:

```bash
sudo journalctl -u postgresql.service -f

```

_Leave this terminal window open while you run an Nmap scan or an exploit inside Metasploit.
You will see the live database transactions, connection open/close events,
and internal logs scrolling by in real-time!_
