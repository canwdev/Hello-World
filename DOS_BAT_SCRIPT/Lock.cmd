@ echo off

title ����Bitlocker
color 0e

echo ��ȡ����ԱȨ��...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"
cls

echo .
echo ��������Bitlocker...
echo .

manage-bde -lock i: -ForceDismount
echo .
echo ����ر�ϵͳ��"����"������
echo .

pause