@echo off
title Statistical Calculator

cd /d "%~dp0"

"C:\PROGRA~1\R\R-45~1.1\bin\Rscript.exe" "calculator bat.R"

echo.
echo Program finished.
pause