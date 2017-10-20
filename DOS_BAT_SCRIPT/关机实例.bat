@echo off
color 17
mode con cols=40 lines=20
title 自动关机程序
:loop
cls
echo ----------------------------------------
echo    请选择你要进行的操作，然后按回车
echo ----------------------------------------
echo.
echo        1，定时关机
echo        2，倒计时关机
echo        3，删除倒计时关机
echo        4，重启
echo        5，关机
echo        6，注销
echo        7，退出
echo.
set/p n=      请选择：
if %n%==1 goto dsgj
if %n%==2 goto djsgj
if %n%==3 goto scdjsgj
if %n%==4 goto cq
if %n%==5 goto gj
if %n%==6 goto zx
if %n%==7 goto end
goto loop
:end
exit
:reinp
cls
echo 你输入的不正确！请重新输入!
ping /n 3 127.1>nul
:dsgj
cls&echo 请输入定时关机时间
set/p t=【格式：00:00】
set hs=%t:~,2%
set ms=%t:~3,2%
if %hs% gtr 24 goto reinp
if %ms% gtr 60 goto reinp
set t=%t:~,5%
echo t=%t%&pause
::at %t% shutdown -s -t 0
goto end
:djsgj
cls&set/p t=请输入倒计时关机时间(秒):
shutdown -s -t %t%
goto end
:scdjsgj
shutdown -a
goto end
:cq
shutdown -r -t 0
goto end
:gj
shutdown -s -t 0
goto end
:zx
shutdown -l -t 0
goto end
