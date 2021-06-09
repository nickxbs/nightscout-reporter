@echo off
cls
echo Hiermit wird Nightscout Reporter erstellt. Davor muss die Synchronisation 
echo von Dropbox angehalten und eventuell laufende Server Instanzen beendet werden.
echo.
echo Bitte eine Taste druecken zum Fortsetzen oder Batchdatei abbrechen
pause >nul
rem goto skipbuild
rem del /s /q lib\src\*.css
rem del lib\*.css
call "C:\tools\dart-sdk\bin\pub.bat" get
call "C:\tools\dart-sdk\bin\pub.bat" global activate webdev 2.6.2
call "C:\tools\dart-sdk\bin\pub.bat" global run webdev build --output=web:build -- --delete-conflicting-outputs
