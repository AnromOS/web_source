---
title: Windows系统中，使用刷机工具进行刷机
date: 2016-08-23 12:28:19
category:
        - ROM文档
tags:
        - Anrom
        - 文档
---

### 1.下载刷机工具
[刷机工具下载地址](http://u.mixun.org/static/misc/platform-tools-windows.zip)
下载完成后，解压

### 2.下载ROM
根据机型，下载对应的ROM
[一加手机一代](http://u.mixun.org/allroms/bacon)
[华为Nexus6P](http://u.mixun.org/allroms/angler)
[Google Nexus 5x](http://u.mixun.org/allroms/bullhead)
[Google Nexus 5](http://u.mixun.org/allroms/hammerhead)
[小米手机Mi3，Mi4](http://u.mixun.org/allroms/cancro)
[一加手机3](http://u.mixun.org/allroms/oneplus3)

### 3.ROM改名
下载完成后，将下载的zip文件改名为anromupdate.zip
并移动到刷机工具文件夹中，此时，刷机工具文件夹的内容如下图:
![image](/assets/img/files_in_dir.jpg)

### 4.将手机重启到recovery
关机后，长按电源键+音量UP，进入recovery模式
![image](/assets/img/step0.jpg)
点击Keep Read Only
![image](/assets/img/step1.jpg)
点击Advanced
![image](/assets/img/step2.jpg)
点击ADB Sideload
![image](/assets/img/step3.jpg)
滑动Swipe to Start Sideload
![image](/assets/img/step4.jpg)

### 5.运行刷机脚本
运行刷机脚本前，请彻底关闭电脑端的360手机助手，QQ应用宝等第三方手机助手软件
双击刷机文件夹中的anrom.bat
效果如图
![image](/assets/img/anrombat.jpg)
等待刷机过程完成
当手机屏幕上出现如下的Successful信息时，点击Reboot System
![image](/assets/img/step5.jpg)
至此，刷机过程就完成了

### 常见问题
1. anrom.bat脚本闪退
检查电脑上的第三方手机助手软件是否关闭
重新插拔数据线
换一根数据线
2. 无法进入sideload状态
回退到主菜单，并选择Reboot
![image](/assets/img/err1.jpg)
选择reboot到recovery
![image](/assets/img/err2.jpg)
从第4步开始，重新刷机




