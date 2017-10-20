@ echo off

title 锁定Bitlocker
color 0e

echo 获取管理员权限...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"
cls

echo .
echo 正在锁定Bitlocker...
echo .

manage-bde -lock i: -ForceDismount
echo .
echo 建议关闭系统以"彻底"锁定。
echo .

pause