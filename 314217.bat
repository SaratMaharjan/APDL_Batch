
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=r

set proj_Num=314217

REM for /l %%b in (2 1 2) do (
for %%b in (1 2 3) do (
  REM +ve
  set bq=%%b
    set interval=2009 10 2099
    set interval2=1!bq! 10 1!bq!
      call calc.bat

  REM -ve
  set bq=%%b
    set interval=2119 10 2199
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
