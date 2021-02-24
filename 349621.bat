
call reset.bat
@REM set appPath="C:\Program Files\ANSYS Inc\v202\ANSYS\bin\winx64\ansys2020R2.exe"

set proj_Num=%~n0
@REM set proj_Num=345920

@REM set pathBefore=E:
set pathAfter=ansyse

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=g


@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=2000 1 2000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=50!bq! 100 50!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )


for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=2000 1 2000
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=30!bq! 100 30!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)

@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=2000 1 2000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=90!bq! 100 90!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )
