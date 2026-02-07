@echo off
setlocal

cd /d "%~dp0"

powershell.exe -NoProfile -ExecutionPolicy Bypass -NoExit -File ".\project\run.ps1"

endlocal
