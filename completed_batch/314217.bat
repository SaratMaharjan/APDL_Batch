
call reset.bat

@REM set pathBefore=F:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s-alt.in

set redirect=1
@REM set extVar=1
@REM set nPrefix=r

set proj_Num=314217

@REM for /l %%b in (1 1 3) do (
@REM for %%b in (1 2 3) do (
  @REM +ve
  @REM set bq=%%b
  set bq=1
    set interval=2049 10 2049
    set interval2=2!bq! 10 2!bq!
      call calc.bat

  @REM -ve
  set bq=2
    set interval=2019 30 2049
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=3
    set interval=2049 30 2079
    set interval2=1!bq! 1 1!bq!
      call calc.bat
@REM )
