
call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s-alt.in

set redirect=1
@REM set extVar=1
@REM set nPrefix=i

set proj_Num=314917

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2111 1 2111
    set interval2=10!bq! 100 10!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2112 1 2112
    set interval2=20!bq! 200 40!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2112 1 2112
    set interval2=50!bq! 200 50!bq!
      call calc.bat
)

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=10!bq! 100 10!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=20!bq! 100 20!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=30!bq! 100 30!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=40!bq! 100 40!bq!
      call calc.bat
)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=2700 1 2700
    set interval2=50!bq! 100 50!bq!
      call calc.bat
)

set nPrefix=i
for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=1200 1 1200
    set interval2=10!bq! 200 10!bq!
      call calc.bat
)

set nPrefix=i
for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM FS
  set bq=%%b
    set interval=1200 1 1200
    set interval2=10!bq! 200 10!bq!
      call calc.bat
)
