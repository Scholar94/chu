@echo off
cd /d "%~dp0"
echo Creating a daily 11:55 PM Church Manager backup task...
schtasks /Create /TN "Church Manager Daily Backup" /TR "\"%~dp0RUN-DAILY-BACKUP.bat\"" /SC DAILY /ST 23:55 /F
if errorlevel 1 (
  echo.
  echo Task creation failed. Run this file as Administrator and try again.
  pause
  exit /b 1
)
echo Daily backup task installed successfully.
echo Backups will be saved in:
echo %~dp0backups
pause
