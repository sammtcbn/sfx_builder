@echo off

set currdir=%~dp0
cd /d "%currdir%"

rem ==============================================
rem custom section start
rem ==============================================

if exist "C:\MyApp" (
    echo rmdir "C:\MyApp" /s/q
    rmdir "C:\MyApp" /s/q
)

echo mkdir "C:\MyApp"
mkdir "C:\MyApp"

echo xcopy /Y /E archives\*.* "C:\MyApp"
xcopy /Y /E archives\*.* "C:\MyApp"
@if %ERRORLEVEL% NEQ 0 (
    @echo "Fail to install"
    pause
    exit 1
)

rem done
echo install done
timeout /t 5
