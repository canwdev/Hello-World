echo off
reg add "HKCR\*\shell\ms-dos" /ve /d 用CMD指定该目录 /f
reg add "HKCR\*\shell\ms-dos\command" /ve /d "cmd.exe /k cd %%1" /f
reg add "HKCR\Folder\shell\ms-dos" /ve /d 用CMD指定该目录 /f
reg add "HKCR\Folder\shell\ms-dos\command" /ve /d "cmd.exe /k cd %%1" /f
reg add HKCR\.bat\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d 批处理文件 /f >nul
reg add HKCR\.cmd\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d windows NT 命令脚本 /f >nul
reg add HKCR\.vbs\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d VBScript Script File /f >nul
cls
echo 完成！
echo ZF制作天下无敌！
echo 网盘：http://59725604.ys168.com/
pause >nul