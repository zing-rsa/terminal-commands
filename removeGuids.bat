@echo off
echo.
echo ---------------------------------------------------
echo Removing Guids:
echo ---------------------------------------------------
echo.

IF "%1"=="" (
    "python" "%~dp0removeGuids.py" "%CD%"
) ELSE (
    "python" "%~dp0removeGuids.py" "%1"
)