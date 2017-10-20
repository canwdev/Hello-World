@ echo off
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof

:st
copy "%~0" "%windir%\system32\"

@echo off
title 脚本：断开连接并关闭WiFi共享
@echo 注意：请以管理员权限执行此脚本。

cls
@echo .
@echo .
@echo 正在结束Netkeeper...

taskkill /f /im B24FA7629F91.exe
@echo .
@echo .
@echo 正在结束随身WiFi...
taskkill /f /im MiWiFi.exe
taskkill /f /im MiWiFiMonitor.exe
@echo .
@echo .
#pause