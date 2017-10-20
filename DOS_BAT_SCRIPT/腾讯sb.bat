@echo off
taskkill /f /im QQProtect.exe
sc config QPCore start= demand