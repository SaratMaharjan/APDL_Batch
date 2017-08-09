
@echo off

set /p project=Enter Project Number: %=%
set direc=D:
set /p direc=Enter Parent Directory (default: %direc%): %=%

if not "%project%" == "" (
  echo Creating Folder Structure .. ... .... ..........

  %direc%

  mkdir %project%

  cd %project%

  mkdir 01_ansys
  mkdir 02_eingang
  mkdir 03_ausgang
  mkdir 04_unterlagen
  mkdir 05_zeichnungen
  mkdir 06_excel
  mkdir 07_mathcad
  mkdir 08_rstab
  mkdir 09_dokumentation
  echo ___________________________Completed________________________
) else (
  echo Name not Provided, aborting .. ... .... ..........
)

timeout /t 10
