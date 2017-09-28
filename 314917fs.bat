
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=qvDown

set proj_Num=314917fs

for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1024 10 1094
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1114 10 1194
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
)

for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1014 10 1094
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM -ve
  set bq=%%b
    set interval=1114 10 1194
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)

REM for /l %%b in (4 1 4) do (
REM REM for %%b in (1 2) do (
REM   REM +ve
REM   set bq=%%b
REM     set interval=1044 20 1044
REM     set interval2=1!bq! 1 1!bq!
REM       call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1124 20 1184
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
REM )
