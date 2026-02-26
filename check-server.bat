@echo off
echo Checking if Guest Guide server is running on port 8765...
echo.
netstat -an | findstr ":8765" >nul 2>&1
if %errorlevel% equ 0 (
    echo [YES] Server is RUNNING.
    echo.
    echo On your iPhone open: http://192.168.1.113:8765
    echo.
) else (
    echo [NO] Server is NOT running.
    echo.
    echo Double-click "start-server.bat" to start it.
    echo.
)
pause
