
call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=d

set proj_Num=316517

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=2100 1 2100
    set interval2=4!bq! 10 4!bq!
      call calc.bat

  @REM REM -ve
  @REM set bq=%%b
  @REM   set interval=1821 1 1829
  @REM   set interval2=10!bq! 1 10!bq!
  @REM     call calc.bat
)
