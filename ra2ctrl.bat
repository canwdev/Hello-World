@echo off
title 红警2控制台
color 4e
mode con cols=40 lines=20
:loop
cls
echo ----------------------------------------
echo             红警2快捷控制台
echo ----------------------------------------
echo.
echo        1，启动 红警2
echo        2，启动 尤里的复仇
echo        3，结束 红警2
echo        4，结束 尤里的复仇

echo        0，退出
echo.
set/p n=      请选择：
if %n%==1 goto ra2
if %n%==2 goto yuri
if %n%==3 goto exitra2
if %n%==4 goto exityuri

if %n%==0 goto end
goto loop
:end
exit
:ra2
start ra2.exe
goto loop
:yuri
start ra2md.exe
goto loop
:exitra2
taskkill /f /im ra2.exe
taskkill /f /im game.exe
goto loop
:exityuri
taskkill /f /im ra2md.exe
taskkill /f /im gamemd.exe
goto loop
