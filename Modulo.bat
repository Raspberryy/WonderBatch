@echo off 
title Der NEUE Rechner	  
color 8a
set oft = 0
set enz=1
echo.
echo    Wie lautet der Divident? (grosse Zahl)
echo.
set /p dd=Divident:
set ddr=%dd%  
cls
echo.
echo         Divident: %ddr%
echo.
echo    Wie lautet der Divisor? (kleine Zahl) 
echo.
set /p ds=Divisor:     

:mod
if %dd% LSS %ds% goto disp
set /a dd= %dd%-%ds%
set /a oft=%oft%+%enz%
goto mod 

:disp 
cls
echo.
echo   %ddr% mod %ds% = %oft% modulo %dd%
pause > nul 