@ echo off

title ������
color 0e

echo ��ȡ����ԱȨ��...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"


:loop
cls
echo ========================================
echo       ������رշ�����
echo ========================================
echo.
echo        1  ���� ������
echo        2  �ر� ������
echo.
echo        0  �˳�  
echo.
echo ========================================
set/p n=           ��ѡ��

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