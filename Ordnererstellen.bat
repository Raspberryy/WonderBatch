@echo off 
title Willkommen 

:setn
color 02 

set m=0
set n=0


:eg
echo.
echo.
echo    Wie soll der Ordner heissen ?
echo.
set /p name= 
echo.
echo.
echo    Wie viele Ordner sollen es sein
set /p anz=
echo. 
echo.
echo     Es werden 0 - %anz% Ordner erstellt
echo         Mit dem Namen %name% 
echo.
echo       Einverstanden --> Druecke Enter
pause > nul

:hpt
mkdir C:\Users\%username%\Desktop\%name%%n%
set /a n= %n% + 1
set /a m= %m% + 1
if %m%==%anz% goto end
goto hpt

:end

cls 
color 03 
echo.
echo.
echo     Herzlichen Glückwunsch!
echo.
echo         Es wurde %m% Ordner erstellt
pause > nul
goto setn