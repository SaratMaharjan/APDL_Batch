
call reset.bat
set appPath="C:\Program Files\ANSYS Inc\v211\ANSYS\bin\winx64\ansys2021R1.exe"

set proj_Num=%~n0
@REM set proj_Num=345920

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=a

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1000 1 1000
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=50!bq! 100 50!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
