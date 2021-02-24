@REM @echo off

        call timer.bat :startTimer

@REM setlocal EnableDelayedExpansion

@REM call calc-loop.bat :calc

pause
@REM endlocal

    @REM EQU - equal
    @REM NEQ - not equal
    @REM LSS - less than
    @REM LEQ - less than or equal
    @REM GTR - greater than
    @REM GEQ - greater than or equal

      @REM variable can be only one character , use /a for arithmetic calc .. eg: set /a job=%job%+1
  @REM for /l %%n in (1 1 10) do (
  @REM for some numbers not as series above#
  @REM for %%n in (11,12,13) do (

  @REM  Dont use :Subroutine  inside loop

  @REM setlocal EnableDelayedExpansion
@REM for /l %%t in (1 1 3)  do (
@REM for %%t in (1,2,3)  do (

for /f %i in (non-essential-files.txt) do del %i /f /s /q
rd .git /s /q
rd e2e /s /q
