@echo off 
title EINGABE  
color 8a
:beg
cls
echo    By R4sp_Berry       Version 2.0
echo.
echo     1.) Anleitung
echo     2.) Multiplizieren 
echo.
set /p wl=Eingabe:
if %wl%==1 goto anl
if %wl%==2 goto mult
msg %username% FALSCHE EINGABE (Gebe "1" oder "2" ein) 
goto beg 







:anl
cls
echo.
echo    Das Programm rechnet nahezu selbststaendig Kommezahlen, ABER
echo.
echo      Da DOS einen String nicht splitten kann muss per Hand die Kommezahl getrennt werden:
echo          1. Schritt  
echo              - Eingabe der Kommazahl 
echo              - Das Zeichen fuer Komma ist egal (Punkt,Komma... etc.)
echo              - Faktor = Kommazahl
echo.
echo          2. Schritt
echo              - Eingabe der Nachkommestellen
echo              - Bsp: 6,75 hat 2 Zahlen nach dem Komma 
echo              - Nur die zahl eingeben 
echo.
echo          3. Schritt 
echo              - Aufspaltung der Zahl
echo              - Bsp: 6,75 wird zu 675 
echo              - Einfach die Zahl ohne Komma schreiben 
echo.
echo   Bedingung
echo.
echo   In der momentanen Phase duerfen es insgesamt nicht mehr als 6 Nachkommastellen sein!
pause > nul 
cls
goto beg 




:mult
cls
set nu=
set zamikom=0
set tester=0
set vork = 0
echo.
set /p zes=Faktor Eins:
cls
echo.
set /p zzi=Faktor Zwei:
cls
echo.
set /p kmzes=Wie viele Kommastellen hat %zes%:  
cls
echo.
set /p kmzzi=Wie viele Kommastellen hat %zzi%:
set /a komi= %kmzzi% + %kmzes%
cls
set /p okzes=Schreiben Sie %zes% ohne Komma:
cls
set /p okzzi=Schreiben Sie %zzi% ohne Komma:
set /a zamikom= %okzzi% * %okzes%
cls








:ub
set vork=0
if %komi% == 6 goto tom
if %komi% == 5 goto hunt
if %komi% == 4 goto zet
if %komi% == 3 goto tau
if %komi% == 2 goto hund
if %komi% == 1 goto zehn


:tom
if %zamikom% LSS 1000000 goto ausg  
set /a zamikom= %zamikom% - 1000000 
set /a vork= %vork% + 1 
goto tom

:hunt
if %zamikom% LSS 100000 goto ausg  
set /a zamikom= %zamikom% - 100000 
set /a vork= %vork% + 1 
goto hunt
 
:zet
if %zamikom% LSS 10000 goto ausg
set /a zamikom= %zamikom% - 10000
set /a vork= %vork% + 1 
goto zet

:tau
if %zamikom% LSS 1000 goto ausg 
set /a zamikom= %zamikom% - 1000 
set /a vork= %vork% + 1 
goto tau

:hund
if %zamikom% LSS 100 goto :ausg  
set /a zamikom = %zamikom% - 100 
set /a vork= %vork% + 1
goto hund

:zehn
if %zamikom% LSS 10 goto ausg 
set /a zamikom= %zamikom% - 10 
set /a vork= %vork% + 1 
goto zehn







:ausg
goto kommatest

:ausge
cls 
echo.
echo.
echo    %zzi% * %zes% = %vork%,%nu%%zamikom%    
pause > nul
cls
goto beg


:kommatest
set tester=10
set /a komi= %komi% -1

:loo
if %komi%==1 goto check 
set /a komi= %komi% -1 
set /a tester= %tester% * 10 
goto loo

:check
if %zamikom% LSS %tester% goto sett
goto ausge

:sett
set nu=0
goto ausge