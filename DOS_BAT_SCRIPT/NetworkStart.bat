@echo off
title 脚本：连接校园网并创建热点





@echo 说明：先连接校园网，之后再给小米WiFi管理员权限！
@echo .
@echo .
@echo 正在启动沙箱中的Netkreeper...

start "" "C:\Sandbox\Canwin7\DefaultBox\drive\C\ChinaNetSn\bin\B24FA7629F91.exe"

@echo .
@echo .
@echo 正在启动随身WiFi...
start "" "C:\Program Files (x86)\XiaoMi\MiWiFi\MiWiFi.exe"
@echo .
@echo .