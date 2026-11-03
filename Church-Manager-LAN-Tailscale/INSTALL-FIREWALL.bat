@echo off
net session >nul 2>&1
if not %errorlevel%==0 (
  echo Please right-click this file and choose "Run as administrator".
  pause
  exit /b 1
)
echo Adding Church Manager LAN firewall rule...
netsh advfirewall firewall delete rule name="Church Manager LAN TCP 3000" >nul 2>&1
netsh advfirewall firewall add rule name="Church Manager LAN TCP 3000" dir=in action=allow protocol=TCP localport=3000 remoteip=localsubnet profile=any

echo Adding Church Manager Tailscale firewall rule...
netsh advfirewall firewall delete rule name="Church Manager Tailscale TCP 3000" >nul 2>&1
netsh advfirewall firewall add rule name="Church Manager Tailscale TCP 3000" dir=in action=allow protocol=TCP localport=3000 remoteip=100.64.0.0/10 profile=any

echo.
echo Firewall rules installed.
echo Direct public Internet port forwarding is NOT required.
pause
