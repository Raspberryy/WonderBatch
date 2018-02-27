@echo off
title Lasst die Spiele beginnnen
set /a i = 0
:a
cls
echo.
echo 	Willkommen, du hast bis jetzt %i% Ordner angelegt
echo.
set /p name=Fachname: 
mkdir %name%
mkdir %name%\Hausaufgaben
mkdir %name%\Klausurvorbereitung
mkdir %name%\Links
mkdir %name%\Praktika
mkdir %name%\Skripte
mkdir %name%\Uebungen
set /a i = %i%+1
goto a
