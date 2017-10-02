@echo off 
title  
color
set end=0
set enz=1
set nu=0

:eng
echo.
echo Wie viel Durchgaenge?
set /p dur=Durchgaenge:
cls

:a
set z=
set /a new = 1000 - %random:~-3%
echo Deine Zahl ist und %new%

:b
set /a alt= 1000 - %random:~-3%
if %alt%==%new% goto r
echo %alt% ist nicht %new%
set /a z= %z% + 1
goto b

:r
set /a end=%end%+%z%
set /a wur=%wur%+%enz%
set /a dur=%dur%-%enz%
if %dur%==%nu% goto ausg 
goto a

:ausg
cls
echo.
echo.
echo Es waren %z% Versuche
echo   Bei %wur% Durchgaengen 
echo.
echo    Insgesamt %end%
pause > nul


goto a
