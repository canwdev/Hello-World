@echo off
title 24K��ʱ��
mode con cols=19 lines=6 & color 0f
:Loop
echo.
echo 24K��ʱ��
echo. 
echo %date%
echo %time:~0,-3%
ping -n 2 127.0.0.1 > nul
cls
Goto Loop
