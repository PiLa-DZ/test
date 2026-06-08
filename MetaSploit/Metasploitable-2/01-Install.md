# Step 1: Install VirtualBox on Arch Linux

Arch requires you to choose the VirtualBox driver module based on the kernel you are running.

1. **Check your current kernel type:**

```bash
uname -r

```

- If it says `arch1` (standard kernel), you need `virtualbox-host-dkms`.

```bash
sudo pacman -S virtualbox-host-dkms
```

- If it says `lts`, you need `virtualbox-host-modules-arch`.

```bash
sudo pacman -S virtualbox-host-modules-arch
```

1. **Install VirtualBox and the matching components:**

```bash
sudo pacman -Syu virtualbox virtualbox-guest-iso

```

1. **Load the VirtualBox kernel drivers:**

```bash
sudo modprobe vboxdrv

```

1. **Enable the drivers permanently** so they load automatically every time you boot this second PC:

```bash
echo "vboxdrv" | sudo tee /etc/modules-load.d/virtualbox.conf

```

---

## Step 2: Download Metasploitable 2

We need to download the `.vmdk` file. You can download it via your browser or straight from your terminal using `wget` into your home directory.

1. Install `wget` and `unzip` if you don't have them:

```bash
sudo pacman -S wget unzip

```

1. Download the official Metasploitable 2 archive:

```bash
wget https://sourceforge.net/projects/metasploitable/files/Metasploitable2/metasploitable-linux-2.0.0.zip

```

1. Extract the contents:

```bash
unzip metasploitable-linux-2.0.0.zip

```

_This creates a folder named `metasploitable-linux-2.0.0` containing a file named `Metasploitable.vmdk` (the virtual hard drive)._

---

## Step 3: Create the VM in VirtualBox (The Smart Way)

Now, open the VirtualBox Graphic Interface by typing `virtualbox` in your application launcher or terminal.

1. Click **New** (the blue star icon) to create a new VM:

- **Name:** `Metasploitable2`
- **Type:** `Linux`
- **Version:** `Ubuntu (64-bit)` (Metasploitable 2 is built on an older Ubuntu base).

1. **Memory (RAM):** Set it to **512 MB** or **1024 MB (1GB)**. It doesn't need more than that since it has no graphical desktop interface.
2. **Hard Disk (Crucial Step):** *Do*not\* select "Create a virtual hard disk now".

- Click **"Use an existing virtual hard disk file"**.
- Click the folder icon, click **Add**, navigate to your unzipped folder, and choose **`Metasploitable.vmdk`**.
- Click **Create**.

---

## Step 4: Configure the Network Bridge 🌐

Before hitting the Start button, we must bridge the network adapter so your main attacker laptop can interact with it over your router.

1. Select your new `Metasploitable2` VM and click **Settings** (the gear icon).
2. Go to the **Network** tab on the left.
3. Under _Attached to:_, change `NAT` to **Bridged Adapter**.
4. Under _Name:_, select the active network interface of this second computer (e.g., your wireless interface like `wlan0` or `wlp2s0`).
5. Click **OK**.

---

## Step 5: Boot and Find the Target IP

1. Click **Start** (the green arrow) to boot your target.
2. Let the text scroll by until you see a black login prompt.
3. Log in using the built-in vulnerable credentials:

- **login:** `msfadmin`
- **password:** `msfadmin`

1. Once logged in, type this command inside the VM window to find its newly assigned local IP address:

```bash
ifconfig

```

_Look for `inet addr` under `eth0` (it should look something like `192.168.0.X`)._

---

### Time to Test from your Attacker Laptop! 🏁

Now, go back to your **main attacker laptop**, open your terminal, and try running a ping sweep or a quick scan against that new IP address you just found:

```bash
sudo nmap -p 21,22,80,2345 --script vuln <TARGET_IP>

```

You should see a beautiful waterfall of open ports and vulnerabilities, including that `vsftpd_234_backdoor` you were looking for! Let me know if you run into any permission hitches while launching VirtualBox.
