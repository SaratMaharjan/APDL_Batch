
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=D:\apdl
REM set sourceFile=s-alt.in

set redirect=1
REM set extVar=1
REM set nPrefix=d

set proj_Num=312017

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1812 1 1812
    set interval2=10!bq! 1 10!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1118 1 1198
  REM   set interval2=10!bq! 1 10!bq!
  REM     call calc.bat
)
