@echo off
cls
color 0A

@echo off
cls
color 0A

cls
echo.
echo.
echo�������������������� **********************************
echo.
echo�������������������� ���������� ����Կ��Ҽ��˵�
echo.
echo������������������������ ������

echo���������������� ��������������

echo.
echo�������������������� **********************************
echo.

regsvr32 /u /s igfxpph.dll
echo.
echo��������������Ժ�...
echo.
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f

reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719}
echo.
echo.
echo�������������������� �����Կ��Ҽ��˵��Ѿ����...
echo.
pause