@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "$p=Get-CimInstance Win32_Process -Filter \"Name='node.exe'\" | Where-Object { $_.CommandLine -like '*Church-Manager-LAN-Tailscale*server.js*' }; if($p){$p | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }; Write-Host 'Church Manager stopped.'} else {Write-Host 'Church Manager server was not found.'}"
pause
