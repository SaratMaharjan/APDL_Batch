
REM Select Drive and Initial Values
		if "!host!" equ "ansys2" (
			set sourcePre=R:\maharjan
			set pathBefore=E:\Maharjan
			set pathAfter=ANSYS
		) else (
			set sourcePre=R:\maharjan
			REM set pathBefore=D:
			set pathBefore=E:
			set pathAfter=ANSYS
		)

		set redirect=0
		set execute=1

		REM append=1:appends to bat file, else is overwritten
			set append=1
			REM set append=0

		REM Initial File Name: 1-file; 2-file2
			set d=1
			REM set d=2
