
call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s.in

@REM set redirect=0
@REM set extVar=0
@REM if %extVar% equ 1 (
@REM   set nPrefix=d
@REM )

set proj_Num=311017

@REM for /l %%b in (1 1 1) do (
@REM   @REM REM +ve CS 1-6
@REM   @REM set bq=%%b
@REM   @REM   set interval=1086 10 1096
@REM   @REM   set interval2=1!bq! 1 1!bq!
@REM   @REM     call calc.bat

@REM   @REM +ve CS 1-6
@REM   set bq=%%b
@REM     set interval=1156 10 1196
@REM     set interval2=1!bq! 1 1!bq!
@REM       call calc.bat
@REM )

@REM for %%b in (2 4 6) do (
  @REM +ve CS 1-6
  @REM set bq=%%b
    set interval=1009 10 1099
    @REM set interval2=1!bq! 1 1!bq!
    set interval2=11 2 15
      call calc.bat

  @REM +ve CS 1-6
  @REM set bq=%%b
    set interval=1119 10 1199
    @REM set interval2=1!bq! 1 1!bq!
    set interval2=11 2 15
      call calc.bat
@REM )
