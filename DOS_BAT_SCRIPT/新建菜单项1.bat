echo off
reg add HKCR\.c\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d C File /f >nul

reg add HKCR\.cpp\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d Cpp File /f >nul

reg add HKCR\.h\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d C Head File /f >nul

reg add HKCR\.docx\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d Docx File /f >nul

reg add HKCR\.java\ShellNew /v nullfile /f >nul 
reg add HKCR\batfile /ve /d java code /f >nul