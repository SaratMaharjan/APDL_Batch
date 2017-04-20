
REM Select Drive and Initial Values
		if "!host!" equ "ansys2" (
			set sourcePre=R:\maharjan
			set pathBefore=D:\Maharjan
			set pathAfter=ANSYS
		) else (
			set sourcePre=R:\maharjan
			set pathBefore=D:
			REM set pathBefore=E:
			set pathAfter=ANSYS
		)

		set redirect=0
		set extVar=0
		set execute=1

		REM append=1:appends to bat file, else is overwritten
			set append=1
			REM set append=0

		REM Initial File Name: 1-file; 2-file2		!not used..... jobname used for err FILENAME
			REM set d=1
			set d=2

		set sourceFile=s.in
