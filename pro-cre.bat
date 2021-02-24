
@echo off

set name="new-project"
set /p project=Enter Project Number: %=%
set /p name=Enter Project Name: %=%

if not "%project%" == "" (
  echo Creating Folder Structure .. ... .... ..........

  @REM %direc%
  mkdir %project%
  cd %project%

  mkdir 01_Eingang
  mkdir 02_Ausgang
  mkdir 03_Unterlagen
  mkdir 04_Dokumentation
  mkdir 05_Nebenrechnungen
  mkdir 06_Zeichnungen
  mkdir 07_ansys
  mkdir 08_wb
  mkdir 09_rstab
  echo .>"%name%.json"
  echo ___________________________Completed________________________
) else (
  echo Number not Provided, aborting .. ... .... ..........
)

timeout /t 10
