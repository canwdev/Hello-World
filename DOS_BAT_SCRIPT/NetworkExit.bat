@ echo off
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof

:st
copy "%~0" "%windir%\system32\"

@echo off
title �ű����Ͽ����Ӳ��ر�WiFi����
@echo ע�⣺���Թ���ԱȨ��ִ�д˽ű���

cls
@echo .
@echo .
@echo ���ڽ���Netkeeper...

taskkill /f /im B24FA7629F91.exe
@echo .
@echo .
@echo ���ڽ�������WiFi...
taskkill /f /im MiWiFi.exe
taskkill /f /im MiWiFiMonitor.exe
@echo .
@echo .
#pause