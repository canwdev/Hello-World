@ECHO OFF
PUSHD %~DP0
TITLE Sublime Text
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
SET /P ST=����a����Ҽ��˵�������dɾ���Ҽ��˵���
if /I "%ST%"=="a" goto Add
if /I "%ST%"=="d" goto Remove
:Add
reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text"         /t REG_SZ /v "" /d "&Sublime Text"   /f
reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%~dp0sublime_text.exe" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text\command" /t REG_SZ /v "" /d "%~dp0sublime_text.exe \"%%1\"" /f
 
exit
:Remove
reg delete "HKEY_CLASSES_ROOT\*\shell\Sublime Text" /f
exit