@echo off
title 脚本：连接校园网并创建热点

@echo 说明：先连接校园网，之后再给WiFi共享大师管理员权限！
@echo .
@echo .
@echo 正在启动Netkreeper...

start "" "c:\Program Files (x86)\NetKeeper\NetKeeper.exe.lnk"

@echo .
@echo .
@echo 正在启动WiFi共享大师...
start "" "C:\Program Files (x86)\WiFi共享大师\WiFiMaster.exe"
@echo .
@echo .
