@echo off
REM By Raspberryy

:start
set on=0
set tw=0
set th=0
set fo=0
set fi=0
set si=0
set se=0
set ei=0
cls
echo. 
echo		Subnetting ist der echte Shit!!11!
echo.
echo			1  Binary to Decimal
echo			2  Decimal to Binary
echo.
set /p ent=Enter:  
if %ent%==1 goto btd
if %ent%==2 goto dtb


:loser
cls
echo.
echo       Du kannst nicht mal ne Zahl eingeben - Du Larry
echo.
ping 127.0.0.1 -n 2 > nul
goto start


:btd
cls
echo.
echo    Binary to Dec
echo.
set /p num=Enter:    
set res=0


:calcbtd
if %num:~0,1%==1 set /a res=%res%+128
if %num:~1,1%==1 set /a res=%res%+64
if %num:~2,1%==1 set /a res=%res%+32
if %num:~3,1%==1 set /a res=%res%+16
if %num:~4,1%==1 set /a res=%res%+8
if %num:~5,1%==1 set /a res=%res%+4
if %num:~6,1%==1 set /a res=%res%+2
if %num:~7,1%==1 set /a res=%res%+1
echo %res%
pause > nul
goto start


:dtb
cls
echo.
echo    Dec to Binary
echo.
set /p num=Enter:  
if %num% GEQ 256 goto loser


:calcdtb
if %num% GEQ 128 set on=1 && set /a num=%num%-128 && goto calcdtb
if %num% GEQ 64 set tw=1 && set /a num=%num%-64 && goto calcdtb
if %num% GEQ 32 set th=1 && set /a num=%num%-32 && goto calcdtb
if %num% GEQ 16 set fo=1 && set /a num=%num%-16 && goto calcdtb
if %num% GEQ 8 set fi=1 && set /a num=%num%-8 && goto calcdtb
if %num% GEQ 4 set si=1 && set /a num=%num%-4 && goto calcdtb
if %num% GEQ 2 set se=1 && set /a num=%num%-2 && goto calcdtb
if %num% GEQ 1 set ei=1 && set /a num=%num%-1 && goto calcdtb
echo %on%%tw%%th%%fo%%fi%%si%%se%%ei%
pause > nul
goto start
