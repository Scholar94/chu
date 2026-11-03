@echo off
cd /d "%~dp0"
node backup.js
if not "%CM_BACKUP_SCHEDULED%"=="1" pause
