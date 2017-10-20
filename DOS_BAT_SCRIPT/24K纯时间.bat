@echo off
title 24K纯时间
mode con cols=19 lines=6 & color 0f
:Loop
echo.
echo 24K纯时间
echo. 
echo %date%
echo %time:~0,-3%
ping -n 2 127.0.0.1 > nul
cls
Goto Loop
