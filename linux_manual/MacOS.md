## MacOS study diary

## Brew
- A macos application manager
### Installation
- Input this code in terminal 
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
### Change the source
- `vim brew_install`
- Edit code like this
```
# BREW_REPO = "https://github.com/Homebrew/brew".freeze
# CORE_TAP_REPO = "https://github.com/Homebrew/homebrew-core".freeze
BREW_REPO = "git://mirrors.ustc.edu.cn/brew.git".freeze
CORE_TAP_REPO = "git://mirrors.ustc.edu.cn/homebrew-core.git".freeze
```

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

## Change folder permission
- Edit folder permission `sudo chmod -R 777 Foldername` to make it writable

### Usefull Tools
- [Paste](https://pasteapp.io/) A clipboard time machine
- [Chromium](http://www.chromium.org/Home)A liter, faster google browser
  - In Mac, Chromium doesn't have API key to login google account, there is a way to slove the problem
    1. Browse the chromium's official webiste, it has documation about get API keys
	2. After that, copy the neccessary information
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
	export GOOGLE_API_KEY="AIzaSyBNicn6Vtk-GdpsudrqDGBkgZkZeoSF-Xk"
	export GOOGLE_DEFAULT_CLIENT_ID="962830587107-n89d129m422baq3obsheoll1n3pe7esj.apps.googleusercontent.com"
	export GOOGLE_DEFAULT_CLIENT_SECRET="kwHjQIEpsD5FYsWavma1Lo1b"
	# These keys are mine
	# Launch Chromium
	/Applications/Chromium.app/Contents/MacOS/Chromium_bin
	```	
- [Chrome](https://www.google.cn/intl/zh-CN/chrome/)Google-Chrome
