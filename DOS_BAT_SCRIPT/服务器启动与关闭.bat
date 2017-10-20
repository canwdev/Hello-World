@ echo off

title 管理器
color 0e

echo 获取管理员权限...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"


:loop
cls
echo ========================================
echo       启动与关闭服务器
echo ========================================
echo.
echo        1  启动 服务器
echo        2  关闭 服务器
echo.
echo        0  退出  
echo.
echo ========================================
set/p n=           请选择：

if %n%==1 goto startserver
if %n%==2 goto stopserver
if %n%==0 goto end
goto loop

:end
exit

:startserver
sc start apache
sc start MySQL57
pause
goto loop

:stopserver
sc stop apache
sc stop MySQL57
pause
goto loop