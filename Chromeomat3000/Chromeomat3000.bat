@echo off 
title Chroome Is Cool As Hell 
color 02 
echo.
echo Enter Amount of Links
echo.
set /p n=Enter:

copy InternetExplorer.lnk C:\Users\%username%\Desktop\InternetExplorer.lnk

set i=0

:p
set /a i=%i%+1


:re 
if exist C:\Users\%username%\Desktop\InternetExplorer%i%.lnk goto p:
copy InternetExplorer.lnk C:\Users\%username%\Desktop\InternetExplorer%i%.lnk
set /a n=%n%-1
if %n%==0 goto end
goto re

:end

