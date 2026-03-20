@echo off
setlocal

set INTERVAL=%1
if "%INTERVAL%"=="" set INTERVAL=120

echo === son-of-claude ===
echo Interval: %INTERVAL%s
echo Press Ctrl+C to stop
echo.

:loop
echo [%date% %time%] Checking Teams...

claude -p "Follow the run checklist in BRAIN.md." --chrome --allowedTools "mcp__claude-in-chrome*"

echo [%date% %time%] Done. Sleeping %INTERVAL%s...
echo ---
timeout /t %INTERVAL% /nobreak >nul
goto loop
