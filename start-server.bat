@echo off
title Guest Guide - Server
cd /d "f:\Guest guider"

echo Checking if server is already running on port 8765...
netstat -an | findstr ":8765" >nul 2>&1
if %errorlevel% equ 0 (
    echo.
    echo [OK] Server is already running on port 8765.
    echo      Open on your phone: http://192.168.1.113:8765
    echo.
    pause
    exit /b 0
)

set "PY="
where python >nul 2>&1 && set "PY=python"
if defined PY goto :run
where py >nul 2>&1 && set "PY=py"
if defined PY goto :run
if exist "%LocalAppData%\Programs\Python\Python311\python.exe" set "PY=%LocalAppData%\Programs\Python\Python311\python.exe"
if exist "%LocalAppData%\Programs\Python\Python312\python.exe" set "PY=%LocalAppData%\Programs\Python\Python312\python.exe"
if exist "%LocalAppData%\Programs\Python\Python310\python.exe" set "PY=%LocalAppData%\Programs\Python\Python310\python.exe"
if exist "%ProgramFiles%\Python311\python.exe" set "PY=%ProgramFiles%\Python311\python.exe"
if exist "%ProgramFiles%\Python312\python.exe" set "PY=%ProgramFiles%\Python312\python.exe"
if defined PY goto :run

echo Python was not found on your PC.
echo.
echo To fix: install Python from https://www.python.org/downloads/
echo During setup, tick "Add python.exe to PATH", then run this again.
echo.
pause
exit /b 1

:run
echo Starting server...
echo.
echo When you see "Serving HTTP on 0.0.0.0 port 8765" the server is running.
echo Open on your phone: http://192.168.1.113:8765
echo.
echo Keep this window OPEN. Close it to stop the server.
echo.
"%PY%" -m http.server 8765 --bind 0.0.0.0
pause
exit /b 0
