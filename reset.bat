
@REM set sourcePre=R:\maharjan
set sourcePre=x:\ins
set batPre=x:\projekte
set pathAfter=ansys
set batAfter=07_ansys
set sourceFile=s.in
set nPrefix=f

@REM Select Drive and Initial Values
if "!host!" equ "ansys2" (
  set pathBefore=S:
  @REM set pathBefore=E
) else (
  if "!host!" equ "osmhrjn" (
    set pathBefore=S:
  ) else (
    set pathBefore=D:
  )
)

set redirect=0
set extVar=0

@REM append=1:appends to bat file, else is overwritten
  @REM set append=0
  set append=1
