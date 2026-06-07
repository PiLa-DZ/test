# VAPT (Vulnerability Assessment and Penetration Testing) lifecycle

1. Reconnaissance & Information Gathering (Recon)
2. Scanning & Vulnerability Assessment
3. Exploitation (Penetration Testing)
4. Post-Exploitation & Maintaining Access
5. Reporting & Remediation

---

## 1. Reconnaissance & Information Gathering (Recon)

Gathers as much data about the target as possible.
No active hacking happens here;
It is all about mapping the footprint.

- **Objective:**
  Find IP addresses,
  domain details,
  mail servers,
  network blocks,
  and even employee information.

- **Types:**  
   _Passive Recon:_ Gathering data without interacting with the target
  (e.g., checking WHOIS records, OSINT, public code repositories).

- _Active Recon:_
  Interacting directly with the target network (e.g., pinging hosts).

---

## 2. Scanning & Vulnerability Assessment

The tester uses automated tools to actively probe the target infrastructure
to find live hosts, open doors, and known weaknesses.

- **Port Scanning:**
  Discovering open ports and what protocols/services
  are running behind them (using tools like `nmap`).

- **Vulnerability Scanning:**
  Comparing the discovered service versions against databases
  of known security flaws (using tools like `Nessus` or `OpenVAS`)
  to generate a raw list of potential vulnerabilities.

---

## 3. Exploitation (Penetration Testing)

This is where the actual "hacking" takes place.
The tester takes the list of vulnerabilities found in the scanning phase
and attempts to safely bypass security controls to prove that the risk is real.

- **Objective:** Gain initial access to the system.

- **What happens:**
  The tester launches exploits against unpatched software flaws,
  misconfigured APIs, or weak passwords
  (e.g., executing a reverse shell, SQL Injection,
  or leveraging a memory overflow flaw like _EternalBlue_).

---

## 4. Post-Exploitation & Maintaining Access

Once inside the system,
the goal shifts from just getting in
to understanding the true depth of the damage a real attacker could cause.

- **What happens:**

- **Privilege Escalation:**
  Trying to move from a low-level user account
  (like a standard web-server user) to root/administrator access.

- **Lateral Movement:**
  Pivoting through the network to discover and compromise other connected devices
  (just like how an attacker inside your home Wi-Fi would pivot
  from a compromised phone to attack your Arch Linux machine).

- **Persistence:**
  Setting up a backdoor to ensure that even if the system reboots
  or a connection drops, access isn't lost.

---

## 5. Reporting & Remediation

The final and most crucial phase of professional VAPT.
This is where the technical findings are translated
into a strategic action plan for developers and executives.

- **Objective:**
  Document the entire journey so the defense team can patch the holes.

- **What happens:** The tester creates a comprehensive report detailing:

- The exact steps taken to exploit the system (Proof of Concept).

- The severity of the risks using scoring metrics like CVSS.

- Detailed remediation steps
  (e.g., _"Upgrade Node.js to version X"_, _"Disable UPnP
  on the ZTE router"_, or _"Sanitize SQL inputs via Prisma"_).
