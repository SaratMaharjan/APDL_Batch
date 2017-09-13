
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

set redirect=1
set extVar=1
if %extVar% equ 1 (
  set nPrefix=qvDown
)

set proj_Num=314917

REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
REM   REM +ve
REM   set bq=%%b
REM     set interval=1006 10 1036
REM     set interval2=1!bq! 1 1!bq!
REM       call calc.bat

REM   REM -ve
REM   set bq=%%b
REM     set interval=1116 10 1136
REM     set interval2=1!bq! 1 1!bq!
REM       call calc.bat
REM )

for /l %%b in (2 1 2) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1006 40 1006
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1116 10 1196
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
)

