@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set PATH=^
C:\PROGRA~1\7-Zip;^
C:\PROGRA~2\7-Zip;

cd /d "%TEMP%" && ^
%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest \"https://github.com/dirkarnez/my-markdown-dialect/releases/download/v1.0.0/my-markdown-dialect-v1.0.0-windows-latest.zip\" -OutFile my-markdown-dialect-v1.0.0-windows-latest.zip" &&^
7z.exe x my-markdown-dialect-v1.0.0-windows-latest.zip -o%DOWNLOADS_DIR%\my-markdown-dialect-v1.0.0-windows-latest &&^
del my-markdown-dialect-v1.0.0-windows-latest.zip
