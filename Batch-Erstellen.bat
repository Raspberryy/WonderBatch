@echo off
title Batch Datei Erstellen
color 02
echo.
echo Gebe den Namen ein:
echo.
set /p wurst=
echo @echo off > %wurst%.bat
echo.
echo Titel Eingeben:
echo.
set /p titel=
echo title %titel% >> %wurst%.bat
echo.
echo Farbe Eingeben:
echo.
set /p farbe=
echo color %farbe% >> %wurst%.bat
echo.
echo Fertig mit dem Hauptteil
pause > nul
set nummer=1
:a1
cls
set w=
title       Quelltext
color 0a 
echo.
echo     %nummer%. Zeile eingeben:
echo.
set /p w=
echo %w% >> %wurst%.bat
set /a nummer= %nummer%+1
goto a1

