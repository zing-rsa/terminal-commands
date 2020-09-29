@echo off
echo.
echo ---------------------------------------------------
echo Printing Files:
echo ---------------------------------------------------
echo.

IF "%1"=="" (
    "python" "%~dp0printFilenames.py" "%CD%"
) ELSE (
    "python" "%~dp0printFilenames.py" "%1"
)