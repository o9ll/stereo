@echo off
title Stereo Installer (Voice Fixer)
REM Fetches StereoInstaller.ps1 from bundle repo (o9ll/stereo main).
echo Fetching Voice Fixer...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$b='https://raw.githubusercontent.com/o9ll/stereo/main/StereoInstaller.ps1'; $u=$b+'?t='+[DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds(); iex (Invoke-WebRequest -Uri $u -UseBasicParsing -TimeoutSec 120 -Headers @{'Cache-Control'='no-cache'; 'Pragma'='no-cache'}).Content"
