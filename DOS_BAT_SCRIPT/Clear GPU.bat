@echo off
cls
color 0A

@echo off
cls
color 0A

cls
echo.
echo.
echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ **********************************
echo.
echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ ¡¡¡¡¡¡¡¡¡¡ Çå³ýÏÔ¿¨ÓÒ¼ü²Ëµ¥
echo.
echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ ¡¡¡¡¡¡

echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ ¡¡¡¡¡¡¡¡¡¡¡¡¡¡

echo.
echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ **********************************
echo.

regsvr32 /u /s igfxpph.dll
echo.
echo¡¡ÕýÔÚÇå³ý£¬ÇëÉÔºó...
echo.
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f

reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719}
echo.
echo.
echo¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ ÄúµÄÏÔ¿¨ÓÒ¼ü²Ëµ¥ÒÑ¾­Çå³ý...
echo.
pause