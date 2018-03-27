@echo off
REM		 Run me as Administrator
REM
REM	avbdiskmin = Kleinste Disk  
REM	avbdiskmax = Größte Disk
REM
REM	Alle Disk von avbdiskmin bis avbdiskmax werden formatiert (fat32)
set /a avbdiskmin = 1
set /a avbdiskmax = 2
set /a counter = 0

:Loop
if "%counter%" GEQ "%avbdiskmin%" ( goto check1 )
set /a counter=%counter%+1
goto Loop


:check1
if "%counter%" LEQ "%avbdiskmax%" goto format
set /a counter = %counter%-1
goto exit


:format
diskpart /s %~dp0%counter%script.txt > nul
if "%errorlevel%" == "0" ( 
echo [*] Disk %counter% successful 
set /a counter=%counter%+1
goto Loop ) else (
echo [!] Error at Disk %counter%
echo.
echo Press Enter to exit
pause > nul
goto exit
)



:exit

