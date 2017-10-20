echo off
title 关屏锁定
mode con cols=25 lines=5 & color 0f

echo 锁定时间：
date /t
time /t

nircmd.exe lockws
nircmd.exe monitor off