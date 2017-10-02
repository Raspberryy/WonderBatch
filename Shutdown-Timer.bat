@echo off 
title Shutdown-Timer  
color 8a   
set se = 60
:a
cls
echo.
echo   1.) Sek
echo   2.) Min
echo   3.) Hour
echo.
echo  Enter:
set /p choice =

if "%choice%"=="1" GOTO sek
if "%choice%" == "2" GOTO min
if "%choice%" == "3" GOTO ho





:min
cls
echo.
set /p value=Time in Min:
set /a valuee= %value% * %se%
echo %valuee%
pause > nul
goto a

:ho
cls
echo.
set /p value=Time in Hour
set /a valuee= %value% * %se%*%se%
echo %valuee%
pause > nul
goto a

:sek
cls
echo.
set /p valuee=Time in Sek:
echo %valuee%
pause > nul
goto a