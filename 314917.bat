
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

set redirect=1
REM set extVar=1
REM set nPrefix=i

set proj_Num=314917

REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2111 1 2111
REM     set interval2=10!bq! 100 10!bq!
REM       call calc.bat
REM )

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2112 1 2112
REM     set interval2=20!bq! 200 40!bq!
REM       call calc.bat
REM )

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2112 1 2112
REM     set interval2=50!bq! 200 50!bq!
REM       call calc.bat
REM )

REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2700 1 2700
REM     set interval2=10!bq! 100 10!bq!
REM       call calc.bat
REM )

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2700 1 2700
REM     set interval2=20!bq! 100 20!bq!
REM       call calc.bat
REM )

for /l %%b in (2 1 2) do (
REM for %%b in (1 2) do (
  REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=30!bq! 100 30!bq!
      call calc.bat
)

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2700 1 2700
REM     set interval2=40!bq! 100 40!bq!
REM       call calc.bat
REM )

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=2700 1 2700
REM     set interval2=50!bq! 100 50!bq!
REM       call calc.bat
REM )

REM set nPrefix=i
REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=1200 1 1200
REM     set interval2=10!bq! 200 10!bq!
REM       call calc.bat
REM )

REM set nPrefix=i
REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (
REM   REM FS
REM   set bq=%%b
REM     set interval=1200 1 1200
REM     set interval2=10!bq! 200 10!bq!
REM       call calc.bat
REM )
