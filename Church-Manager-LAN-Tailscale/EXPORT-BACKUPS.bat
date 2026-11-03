@echo off
set "SRC=%~dp0backups"
set "DST=%USERPROFILE%\Desktop\Church Manager Backups"
if not exist "%SRC%" (
  echo No backup folder exists yet. Start Church Manager first.
  pause
  exit /b 1
)
if not exist "%DST%" mkdir "%DST%"
xcopy "%SRC%\*.json" "%DST%\" /Y /I >nul
echo Latest server backups copied to:
echo %DST%
pause
