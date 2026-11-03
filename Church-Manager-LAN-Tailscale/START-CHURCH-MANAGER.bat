@echo off
cd /d "%~dp0"
if not exist node_modules\express (
  echo First setup: installing required server package...
  call npm install
  if errorlevel 1 (
    echo npm install failed. Please install Node.js LTS and try again.
    pause
    exit /b 1
  )
)
powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath 'node.exe' -ArgumentList 'server.js' -WorkingDirectory '%~dp0' -WindowStyle Hidden"
timeout /t 3 /nobreak >nul
start "" http://localhost:3000
