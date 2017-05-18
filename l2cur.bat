
echo Launch dir: %~dp0
echo Current dir: %cd%
cd /D "%~dp0"
echo Changed Directory to Launch-Dir: %cd%
set ldir=%cd%
echo.
REM echo ..&
REM pause
