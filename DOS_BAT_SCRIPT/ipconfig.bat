@echo off

echo Granting Administrator Permission...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"
cls

title IP tool
color 0a
echo --------------------------ipconfig /all-----------------------
ipconfig /all
echo ---------------------------My Address-------------------------
for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do (
 set IP=%%a
)
echo %IP%
echo --------------------------------------------------------------
pause