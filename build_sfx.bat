@echo off

set targetName=MyApp-1.0.exe

set currdir=%~dp0
cd "%currdir%"

if not exist "C:\Program Files\7-Zip\7z.exe" (
    echo 7-Zip not found
	pause
    goto END  
)

if exist "archives.7z" (
    del /f /q archives.7z
)

if exist "%targetName%" (
    del /f /q %targetName%
)

"C:\Program Files\7-Zip\7z.exe" a archives.7z archives run.bat

copy /b 7zSD.sfx + config.txt + archives.7z %targetName%

timeout /t 3

:END
echo bye