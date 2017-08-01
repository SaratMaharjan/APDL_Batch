@echo off
setlocal enabledelayedexpansion
set max=0
for %%x in (*.bat) do (
  set "FN=%%~nx"
  if !FN! GTR !max! set max=!FN!
)
echo highest file number: %max%
