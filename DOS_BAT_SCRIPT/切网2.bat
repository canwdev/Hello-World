@echo OFF
mode con cols=40 lines=20

echo ��ȡ����ԱȨ��...
%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof
:st copy "%~0" "%windir%\system32\"

@echo OFF
title �������� v2.2

:loop
mode con cols=40 lines=20
cls
echo ========================================
echo 1.�л��� ����
echo 2.�л��� ���� 
echo 3.�л��� ����+DNS
echo 8.ipconfig /all
echo 9.ping qq.com
echo 0.�˳�
echo ========================================
set/p n=��ѡ��
if %n%==1 goto ip_static
if %n%==2 goto ip_dhcp
if %n%==3 goto ip_static_dns
if %n%==8 goto ip_show
if %n%==9 goto ping
if %n%==0 goto end
goto loop
:end
exit

:ip_static
netsh interface ip set address "��̫��" static 10.234.210.8 255.255.255.0 10.234.210.254
::��̬ IP��ַ �������� Ĭ������
title ��ǰ������
::pause
goto loop

:ip_static_dns
netsh interface ip set address "��̫��" static 10.234.210.8 255.255.255.0 10.234.210.254
::��̬ IP��ַ �������� Ĭ������
netsh interface ip set dns "��̫��" static 10.234.14.20
::��̬ DNS��ַ
title ��ǰ������DNS
::pause
goto loop

:ip_dhcp
netsh interface ip set address "��̫��" source="dhcp"
netsh interface ip set dns "��̫��" source="dhcp"
title ��ǰ��DHCP
::pause
goto loop

:ip_show
mode con cols=100 lines=30
ipconfig /all |more
pause
goto loop

:ping
mode con cols=100 lines=30
ping qq.com
if %ERRORLEVEL%==1 set wlzq=�޷����ӻ�����
if %ERRORLEVEL%==0 set wlzq=����
echo ������ϣ�
echo ��ǰ����״̬��%wlzq%
pause
goto loop

