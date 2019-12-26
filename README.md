# My Linux      
##### [🇨🇳](README.md)  [🇬🇧](README.md)

To help me use linux easily

## Kali Linux
### About dual graphics laptop
For example:my laptop couldn't boot into desktop successfully after installation<br>
My way:disable nouveau driver
Press `E` when boot into grub
Input these code in the last third lines, don't forget whitespace!
```
nouveau.modeset=0
```
Then press `F10` to continue,my problem was solved by this way<br>

### update source
Because some reasons,the offical kali source may run slowly in the system,so I have to choose some local sources<br>
Open terminal then input
```
vim /etc/apt/source.list
```

```
#中科大源     I'm using this for now
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib

#阿里云
deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
 
#清华大学
deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free
deb-src https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free
 
#浙大
deb http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free
deb-src http://mirrors.zju.edu.cn/kali kali-rolling main contrib non-free
 
#东软大学
deb http://mirrors.neusoft.edu.cn/kali kali-rolling/main non-free contrib
deb-src http://mirrors.neusoft.edu.cn/kali kali-rolling/main non-free contrib
 
#官方源
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib
```
