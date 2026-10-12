@echo off
REM ============================================================================
REM  extract-portraits.bat - One-click character portrait extractor
REM ============================================================================
REM
REM  WHAT IT DOES:
REM    1. Runs extract-portraits.py to scan every chars* folder (chars/,
REM       charsMARVEL/, charsDC/, ...)
REM    2. For each character, decodes the big portrait (SFF sprite 9000,1,
REM       falling back to 9000,0) straight out of the .sff file
REM    3. Writes portraits/<source>/<character>.png (256x256, transparent)
REM    4. Existing portraits are kept unless you answer "y" to re-extract
REM
REM  AFTER RUNNING:
REM    Run update-manifest.bat so manifest.json picks up the "portrait"
REM    fields for the new PNGs, then push. jsDelivr updates in 5-10 min.
REM
REM  HOW TO USE:
REM    - Double-click this file in Windows Explorer
REM    - Or run from command prompt: extract-portraits.bat
REM
REM  REQUIREMENTS:
REM    - Python 3.6+ installed (https://python.org - check "Add to PATH")
REM    - No pip packages needed (standard library only)
REM
REM  The script runs in the folder where this .bat file is located.
REM ============================================================================

setlocal enabledelayedexpansion
cd /d "%~dp0"

echo ============================================================================
echo  Assets - Character Portrait Extractor
echo ============================================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Python is not installed or not in PATH.
    echo.
    echo  Please install Python 3.6+ from https://python.org
    echo  Make sure to check "Add Python to PATH" during installation.
    echo.
    pause
    exit /b 1
)

REM Check if we're in the right directory
if not exist "chars" (
    echo  ERROR: This doesn't look like the Assets repo.
    echo  Expected to find a 'chars' folder.
    echo  Make sure this .bat file is in the root of the repo.
    echo.
    pause
    exit /b 1
)

REM Check if the extractor script exists
if not exist "extract-portraits.py" (
    echo  ERROR: extract-portraits.py not found.
    echo  It should be in the same folder as this .bat file.
    echo.
    pause
    exit /b 1
)

set "FORCE_FLAG="
if exist "portraits" (
    set /p "redo=Re-extract ALL portraits even if they already exist? (y/N): "
    if /i "!redo!"=="y" set "FORCE_FLAG=--force"
)

echo.
echo  Extracting portraits...
echo  ----------------------------------------
python extract-portraits.py --repo . %FORCE_FLAG%
if errorlevel 1 (
    echo.
    echo  ERROR: Script failed. See messages above.
    echo.
    pause
    exit /b 1
)

echo.
echo  ----------------------------------------
echo  Done!
echo.
echo  NEXT STEP: run update-manifest.bat so manifest.json picks up the
echo  "portrait" fields, then commit and push. jsDelivr updates in 5-10 min.
echo.

pause
