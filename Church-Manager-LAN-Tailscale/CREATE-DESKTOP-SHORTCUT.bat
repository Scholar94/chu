@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws=New-Object -ComObject WScript.Shell;$s=$ws.CreateShortcut([Environment]::GetFolderPath('Desktop')+'\Church Manager.lnk');$s.TargetPath='%~dp0START-CHURCH-MANAGER.bat';$s.WorkingDirectory='%~dp0';$s.Description='Start Church Manager';$s.Save()"
echo Desktop shortcut created.
pause
