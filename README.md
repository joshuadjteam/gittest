# Free VPS!!!

So.. you are wondering what's a free VPS?

Welp, a free VPS is a Virtual Private Server (on the cloud) and its FREE!!

(disclamer : this is NOT 24x7 but it does work when you need it)

# For existing Free-VPS Users and you've rebooted the device, here are command you need

For Tailscale users run :  sudo /usr/sbin/tailscaled && sudo /usr/bin/tailscaled && sudo tailscale up 

And run another terminal

For Chrome Remote Desktop Users : sudo service chrome-remote-desktop restart

# For New Users!

Welcome I'm your host Joshua from DarCodr and im gonna tell you how to get a free perminant server (not 24x7 but works when you need it)

1st. Create a new repo (or fork this to see the code in VS Code)

2nd. Create a workspace at https://github.com/codespaces/new 

3. Select your new repository, switch the cores from 2-cores to 4-cores

4. Create and open it in VS Code

5. Run the following commands

sudo apt update -y && sudo apt upgrade -y

sudo apt install xfce4 && xfce4-goodies

sudo apt install gnome-tweaks

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

sudo apt install ./chrome-remote-desktop_current_amd64.deb -y

sudo apt install -f

sudo apt install ./chrome-remote-desktop_current_amd64.deb -y

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

sudo apt-get install google-chrome-stable

echo Now, you will need to set-up a new account, the username for this account is "user" and will have sudo privilages

sudo adduser 

sudo usermod -aG sudo user

su - user

#Visit https://remotedesktop.google.com/headless until you get to "Set up a new computer" and copy the Debian Linux code and run it

echo Your GitHub VPS is now ready!!!

# Support the creator

Canada eTransfer : joshua.kesavaruban@icloud.com

PayPal : https://paypal.me/djteamhosted

# Credits!

Joshua Kesavaruban (Josh@DarCodr) (joshua.kesavaruban@icloud.com) - Creator

 \-----> My 314 subscribers on YouTube and 82 followers

# Support?

US : +1 (585) 286 - 3299
Mail : joshua.kesavaruban@icloud.com / joshua.ruban@outlook.com

# Device Information

Operating System : Ubuntu 24.04

SSD Persistant Hard Disk Space : 32 ( 16 GB used on system and apps )

DDR5 RAM and CPU Cores : 16 GB RAM and 4 Cores 

Idle Timing : 15 minutes - 1 hours

