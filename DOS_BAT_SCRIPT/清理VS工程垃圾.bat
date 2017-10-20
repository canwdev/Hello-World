echo off
title 批量删除工具
color 4C
echo 警告：将删除当前文件夹中的以下格式的文件，并将无法恢复！
echo 是否继续？
pause
del /a /f /s /q *.ncb
del /a /f /s /q *.plg
del /a /f /s /q *.pch
del /a /f /s /q *.idb
del /a /f /s /q *.ilk
del /a /f /s /q *.pdb
del /a /f /s /q *.obj
del /a /f /s /q *.exp
del /a /f /s /q *.aps
del /a /f /s /q *.opt
del /a /f /s /q *.sdf
del /a /f /s /q *.ipch
del /a /f /s /q *.tlog

pause