@echo off

setlocal EnableDelayedExpansion

net use

REM set proj_Num=281914
set /p proj_Num=Enter The Project Num (Folder):%=%

if not "!proj_Num!" == "" (
  net use s: /dele /y
  net use s: \\SERVER\server_lw_d\Maharjan\!proj_Num! /y
) else (
  echo .
  echo No folder given.............
  echo Nothing Changed!!!!!!!!!!
)
REM pause
timeout /t 10
