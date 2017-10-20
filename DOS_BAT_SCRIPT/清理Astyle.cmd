echo off
title 批量删除工具
color 4C
echo 警告：将删除当前文件夹中的以下格式的文件，并将无法恢复！
echo .orig .cpp .c .h
echo 是否继续？
pause
del *.orig
del *.cpp
del *.c
del *.h
echo 完成！
pause