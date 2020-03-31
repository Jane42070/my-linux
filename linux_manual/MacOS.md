## MacOS study diary

## Brew
- A macos application manager
### Installation
- Input this code in terminal
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- [Replace homebrew source](https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/)

### NTFS Tools
- [NTFS-3G](https://www.tuxera.com/community/ntfs-3g-manual/) it's an opensource NTFS dirver, safe but slow
- [Paragon NTFS for Mac](https://www.ntfsformac.cn/xiazai.html) If you want speed and safe,use it and pay for it

### Installation
- `brew install ntfs-3g`
- Backup original `mount_ntfs` excutable file
- Catalina needs switch into ***recovery mode***
- make `csrutil status` are disabled
- remount root partition: `sudo mount -uw /`
 ```bash
cd /sbin
# Create backup folder
sudo mkdir backup-mount
# Copy original mount_ntfs to backup-mount folder
cp mount_ntfs ./backup-mount
# Soft link mount_ntfs(ntfs-3g)
sudo ln -sf /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
# reboot
sudo reboot
 ```

## About vimtex
- Firstly, install MacTex
- I've tried over 2 days to find a good PDFviewer to match vimtex, it's really hard, but worth it.
- ~~zathura~~: It basic functions are working in MacOS, but when I enable `Sync` in my vim config file `autocmd Filetype tex setl updatetime=1`, It trying to sync and happen a blank screen, few seconds will return to normal, but still can't accept
- <u>evince</u>: Not bad, but it's linux's app, compatibility is not play well in MacOS, and I don't like the interface under MacOS, and can't use **Spectacle** to resize it's layout.
- ~~Skim~~: Not suitable for live preview, can't use `Sync`, interface and other functions are good
- **Texshop**: The best Latex live preview app for now, support `Sync` and stable, use
	- `brew cask install texshop`
	- Adapt high rate refresh, but lose focus after once, use this command
	`defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO`
	- Perfectly solve the problem!

## Change folder permission
- Edit folder permission `sudo chmod -R 777 Foldername` to make it writable

## Clear DNS cache
- `sudo dscacheutil -flushcache`

### Useful Tools
- [Paste](https://pasteapp.io/) A clipboard time machine
- [Chromium](http://www.chromium.org/Home)A liter, faster google browser
  - In Mac, Chromium doesn't have API key to login google account, there is a way to solve the problem
    1. Browse the chromium's official website, it has document about get API keys
	2. After that, copy the necessary information
	3. Then, follow these code on terminal
	```
	# backup Chromium
	mv /Applications/Chromium.app/Contents/MacOS/Chromium /Applications/Chromium.app/Contents/MacOS/Chromium_bin
	# create a shell script
	vim Chromium
	```
	4. Copy these code to the script
	```
	#!/bin/bash

	# Set up environment variables
	export GOOGLE_API_KEY="YOUR_API_KEY"
	export GOOGLE_DEFAULT_CLIENT_ID="YOUR_CLIENT_ID"
	export GOOGLE_DEFAULT_CLIENT_SECRET="YOUR_CLIENT_SECRET"
	# Launch Chromium
	/Applications/Chromium.app/Contents/MacOS/Chromium_bin
	```
- [Chrome](https://www.google.cn/intl/zh-CN/chrome/)Google-Chrome

### Pyinstaller in MacOS
1. [Problem with hook-_tkinter.py using Python3.7 on MacOS](https://github.com/pyinstaller/pyinstaller/issues/3753)
