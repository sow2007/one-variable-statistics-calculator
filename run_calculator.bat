@echo off
title Statistical Calculator

cd /d "%~dp0"

"[paste file location to RScript.exe here]" "calculator bat.R"

echo.
echo Program finished.
pause
