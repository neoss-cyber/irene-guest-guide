@echo off
:: Run this as Administrator: right-click -> Run as administrator
netsh advfirewall firewall add rule name="Guest Guide Server" dir=in action=allow protocol=TCP localport=8765
if %errorlevel% equ 0 (
    echo.
    echo Firewall rule added. You can now open on your iPhone:
    echo http://192.168.1.113:8765
    echo.
    echo Make sure the server is running: in a terminal run:
    echo   cd "f:\Guest guider"
    echo   python -m http.server 8765 --bind 0.0.0.0
) else (
    echo Failed. Make sure you right-clicked and chose "Run as administrator".
)
pause
