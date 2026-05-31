@echo off
REM Wraps: StereoPatcher.ps1 (or run that .ps1 locally).

title Stereo Patcher
echo Fetching latest Voice Node Patcher from bundle repo...
echo.

set "PS1=%USERPROFILE%\.Stereo\StereoPatcher.ps1"

powershell -NoProfile -ExecutionPolicy Bypass -Command "$u='https://raw.githubusercontent.com/o9ll/stereo/main/StereoPatcher.ps1?t='+[DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds(); Invoke-WebRequest -Uri $u -OutFile '%PS1%' -UseBasicParsing -TimeoutSec 120 -Headers @{'Cache-Control'='no-cache'; 'Pragma'='no-cache'}"

if errorlevel 1 (
  echo Download failed.
  pause
  exit /b 1
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%"
pause
