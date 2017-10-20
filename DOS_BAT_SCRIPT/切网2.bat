@echo OFF
mode con cols=40 lines=20

echo 获取管理员权限...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"

@echo OFF
title 设置网络 v2.2

:loop
mode con cols=40 lines=20
cls
echo ========================================
echo 1.切换至 内网
echo 2.切换至 外网 
echo 3.切换至 内网+DNS
echo 8.ipconfig /all
echo 9.ping qq.com
echo 0.退出
echo ========================================
set/p n=请选择：
if %n%==1 goto ip_static
if %n%==2 goto ip_dhcp
if %n%==3 goto ip_static_dns
if %n%==8 goto ip_show
if %n%==9 goto ping
if %n%==0 goto end
goto loop
:end
exit

:ip_static
netsh interface ip set address "以太网" static 10.234.210.8 255.255.255.0 10.234.210.254
::静态 IP地址 子网掩码 默认网关
title 当前在内网
::pause
goto loop

:ip_static_dns
netsh interface ip set address "以太网" static 10.234.210.8 255.255.255.0 10.234.210.254
::静态 IP地址 子网掩码 默认网关
netsh interface ip set dns "以太网" static 10.234.14.20
::静态 DNS地址
title 当前在内网DNS
::pause
goto loop

:ip_dhcp
netsh interface ip set address "以太网" source="dhcp"
netsh interface ip set dns "以太网" source="dhcp"
title 当前是DHCP
::pause
goto loop

:ip_show
mode con cols=100 lines=30
ipconfig /all |more
pause
goto loop

:ping
mode con cols=100 lines=30
ping qq.com
if %ERRORLEVEL%==1 set wlzq=无法连接互联网
if %ERRORLEVEL%==0 set wlzq=正常
echo 测试完毕！
echo 当前网络状态：%wlzq%
pause
goto loop

