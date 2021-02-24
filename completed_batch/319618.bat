
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=E:
set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

set redirect=1
@REM set extVar=1
@REM set nPrefix=m

for /l %%b in (5 1 5) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  @REM REM +ve
  @REM   set interval=2019 1 2019
  @REM   set interval2=1!bq! 10 1!bq!
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2019 1 2019
  @REM   set interval2=2!bq! 10 2!bq!
  @REM     call calc.bat




  @REM REM +ve
  @REM   set interval=2199 1 2199
  @REM   set interval2=1!bq! 10 1!bq!
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2199 1 2199
  @REM   set interval2=2!bq! 10 2!bq!
  @REM     call calc.bat



  @REM REM -ve
  @REM   set interval=2039 30 2099
  @REM   set interval2=1!bq! 10 2!bq!
  @REM     call calc.bat

  @REM -ve
  set interval=2099 30 2099
  set interval2=2!bq! 10 2!bq!
    call calc.bat

)
