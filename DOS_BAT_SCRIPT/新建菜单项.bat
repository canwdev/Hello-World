echo off
reg add "HKCR\*\shell\ms-dos" /ve /d ��CMDָ����Ŀ¼ /f
reg add "HKCR\*\shell\ms-dos\command" /ve /d "cmd.exe /k cd %%1" /f
reg add "HKCR\Folder\shell\ms-dos" /ve /d ��CMDָ����Ŀ¼ /f
reg add "HKCR\Folder\shell\ms-dos\command" /ve /d "cmd.exe /k cd %%1" /f
reg add HKCR\.bat\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d �������ļ� /f >nul
reg add HKCR\.cmd\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d windows NT ����ű� /f >nul
reg add HKCR\.vbs\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d VBScript Script File /f >nul
cls
echo ��ɣ�
echo ZF���������޵У�
echo ���̣�http://59725604.ys168.com/
pause >nul