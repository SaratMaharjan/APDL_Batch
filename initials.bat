
REM anfang Select Drive and Initial Values
		if "!host!" equ "ansys2" (
			set sourcePre=R:\maharjan
			set pathBefore=E:\Maharjan
			set pathAfter=ANSYS
		) else (
			set sourcePre=R:\maharjan
			set pathBefore=D:
			set pathAfter=ANSYS
		)
		set redirect=0
		set execute=1
		REM append=1:appends to bat file, else is overwritten
		set append=1
REM ende

