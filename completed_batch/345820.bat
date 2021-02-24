
call reset.bat
set proj_Num=%~n0
@REM set proj_Num=xxx

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=a

for /l %%b in (8 1 8) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1600 1 1620
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
