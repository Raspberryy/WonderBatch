@echo off


set b=1

:StartLoop

start SubPing.bat %1 %b%
set /a b=%b%+1
if %b%==256 goto End
goto StartLoop

:END
exit
