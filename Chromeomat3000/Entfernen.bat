@echo off 
title Chroome Is Cool As Hell 
color 02 
set i = 1
del C:\Users\%username%\Desktop\InternetExplorer.lnk


:a
del C:\Users\%username%\Desktop\InternetExplorer%i%.lnk
set /a i=%i%+1
if exist C:\Users\%username%\Desktop\InternetExplorer%i%.lnk goto a
:end

