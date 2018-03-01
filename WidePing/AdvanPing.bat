@echo off

set a=1


:StartLoop

start SubPingAdv.bat %a%
if %a%==2 goto End
set /a a=%a%+1
goto StartLoop

:End
exit
