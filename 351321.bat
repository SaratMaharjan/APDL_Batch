
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=C:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=m

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1802 1 1820
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)

call extra_cmd.bat
