@echo off
color 17
mode con cols=40 lines=20
title �Զ��ػ�����
:loop
cls
echo ----------------------------------------
echo    ��ѡ����Ҫ���еĲ�����Ȼ�󰴻س�
echo ----------------------------------------
echo.
echo        1����ʱ�ػ�
echo        2������ʱ�ػ�
echo        3��ɾ������ʱ�ػ�
echo        4������
echo        5���ػ�
echo        6��ע��
echo        7���˳�
echo.
set/p n=      ��ѡ��
if %n%==1 goto dsgj
if %n%==2 goto djsgj
if %n%==3 goto scdjsgj
if %n%==4 goto cq
if %n%==5 goto gj
if %n%==6 goto zx
if %n%==7 goto end
goto loop
:end
exit
:reinp
cls
echo ������Ĳ���ȷ������������!
ping /n 3 127.1>nul
:dsgj
cls&echo �����붨ʱ�ػ�ʱ��
set/p t=����ʽ��00:00��
set hs=%t:~,2%
set ms=%t:~3,2%
if %hs% gtr 24 goto reinp
if %ms% gtr 60 goto reinp
set t=%t:~,5%
echo t=%t%&pause
::at %t% shutdown -s -t 0
goto end
:djsgj
cls&set/p t=�����뵹��ʱ�ػ�ʱ��(��):
shutdown -s -t %t%
goto end
:scdjsgj
shutdown -a
goto end
:cq
shutdown -r -t 0
goto end
:gj
shutdown -s -t 0
goto end
:zx
shutdown -l -t 0
goto end
