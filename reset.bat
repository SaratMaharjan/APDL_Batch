
set sourcePre=R:\maharjan
set pathAfter=ANSYS
set sourceFile=s.in

REM Select Drive and Initial Values
if "!host!" equ "Smaharjan" (

	set pathBefore=D:
	REM set pathBefore=E:

) else (

	set pathBefore=D:\Maharjan

)

set redirect=0

set extVar=0
set execute=1
REM append=1:appends to bat file, else is overwritten
	set append=1
	REM set append=0
