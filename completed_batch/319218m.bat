
call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
set nPrefix=m

set proj_Num=319218

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  @REM REM +ve
  @REM   set interval=2908 1 2908
  @REM   set interval2=10!bq! 100 10!bq!
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2913 1 2913
  @REM   set interval2=202 100 202
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2901 1 2901
  @REM   set interval2=103 100 103
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2913 6 2913
  @REM   set interval2=204 100 204
  @REM     call calc.bat

  @REM +ve
    set interval=2907 1 2907
    set interval2=105 100 105
      call calc.bat

  @REM REM +ve
  @REM   set interval=2904 1 2904
  @REM   set interval2=206 100 206
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2918 1 2918
  @REM   set interval2=107 100 107
  @REM     call calc.bat

  @REM REM +ve
  @REM   set interval=2912 1 2912
  @REM   set interval2=208 100 208
  @REM     call calc.bat

)
