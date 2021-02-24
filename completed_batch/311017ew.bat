
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

set proj_Num=311017ew

for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1037 60 1097
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1137 60 1197
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1017 60 1077
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1117 60 1177
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
for /l %%b in (3 1 3) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1047 50 1097
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1147 50 1197
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
for /l %%b in (4 1 4) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1077 20 1097
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1177 20 1197
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
for /l %%b in (5 1 5) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1017 70 1087
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1117 70 1187
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
for /l %%b in (6 1 6) do (
@REM for %%b in (1 2) do (
  @REM +ve
  set bq=%%b
    set interval=1087 10 1097
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  @REM -ve
  set bq=%%b
    set interval=1187 10 1197
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)
