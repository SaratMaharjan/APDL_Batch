
	REM set "location=!sourcePre!\!proj_Num!"
	REM set "wDir=!pathBefore!\!proj_Num!\!pathAfter!"
	REM echo.
	REM echo Source Location: !location!
	REM echo Working Location: !wDir!
	REM echo.

	REM goto :takeTime

	if !append! equ 1 (
		REM echo.>> !wDir!\sm-apdl.bat
		echo.>> sm-apdl.bat
	) else (
		echo.> sm-apdl.bat
	)

	set todayNow=On %date:~0,2%.%date:~3,2%.%date:~6,4% at %time:~0,2%:%time:~3,2%
	echo *set,hostname,'!host!' > host.csv
	echo *abbr,fin,!location!\ >> host.csv
	echo REM ------------------- >> sm-apdl.bat
	echo REM                          ___!todayNow!___ >> sm-apdl.bat
	echo REM anfang New Analysis Cases >> sm-apdl.bat

	set ans_consec=YES
	set ansys_lock=on

	for /l %%m in (!interval!) do (
		set par=%%m
		set num=4
		call add-zeroes.bat :addZero
		set job=!par!
		@echo on
		echo.
		echo JOB: !job!
		@echo off
		for /l %%n in (!interval2!) do (

			(echo 0) > success.txt

			set par=%%n
			set num=2
			call add-zeroes.bat :addZero
			set lk=!par!
			@echo on
			echo.
			echo ...
			echo ......
			echo New Job With
			echo JOB: !job!
			echo LK: !lk!
			echo __________Calling CALC.BAT__________ & echo. & echo.
			@echo off
			call calc-loop.bat :calc
			REM timeout /t 10
			set /p succeed=<success.txt
			if !succeed! equ 1 (
				call delete-files.bat :delFiles
			)
			@echo on
			echo ____________________________________
			echo Job Finished.... ..... ............
			echo ____________________________________
			@echo off
		)
	)
	echo. >> sm-apdl.bat
	echo REM ende New Analysis Cases >> sm-apdl.bat
	echo REM ------------------- >> sm-apdl.bat

