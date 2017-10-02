@echo off 
title Get Hacked Easy
color 02

set a=stop
taskkill /f /im explorer.exe
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
ping 127.0.0.1 -n 4 >nul
echo       /***                        \
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
echo       /*****                      \
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
echo       /********                   \
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
echo       /*************              \
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
echo       /*****************          \        
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo       Festplatte C:\ wird formatiert!
echo.
echo       /*********************      \
ping 127.0.0.1 -n 10 >nul
msg %username% " Eine Feheler ist aufgetreten. Der Computer faehrt sich nun herunter!"
ping 127.0.0.1 -n 10 >nul
echo.
echo     Geben sie das Admin Passwort ein um es zu verhindern:
echo.
set /p pw=
if %pw%==%a% goto stop
:False
echo  Jetzt wird weg
pause > nul

:stop 
start explorer.exe
pause > nul
goto end 

:end 
echo   Hahaha
echo     Du wurdest verarscht!
pause > nul