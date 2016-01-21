REM call:%*

:calc
echo ---------------STARTING CALCULATION------------------
del D:\%proj_Num%\ANSYS\*.lock

for /l %%c in (1 1 100)  do (
	call Timer.bat StartTimer
	set tBackUp=!Start100S!
	
	for /l %%r in (!startValue! 1 !endValue!) do (
	REM for %%r in (4 3 2) do (
		REM echo %%r
		set numPro=2
		if %%r equ 1 (
			set ansj=struct
			set numPro=4
		)
		if %%r equ 2 (
			REM set ansj=struct
			set ansj=ansys
		)
		if %%r equ 3 (
			set ansj=prfnls
		)
		if %%r equ 4 (
			REM set ansj=stba
			set ansj=meba
		)
		if %%r equ 5 (
			set ansj=ansys
		)
		if %%r equ 6 (
			set ansj=preppost
		)
		echo License: !ansj!
		echo Processors: !numPro!
		echo Project: %proj_Num%
		call Timer.bat StartTimer

		echo %d%

		if %d% equ 1 (
		"C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -i "s:s.in"^
		 -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS"
		)
		 
		if %d% equ 2 (
		"C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -i "s:s.in"^
		 -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS"
		)
		 
		 REM timeout /t 10
		 
		call Timer.bat StopTimer	
		call Timer.bat DisplayTimerResult	
		echo Time Used: !elTime!
		REM set tim=!tCalc!
		REM echo !tim!
		if !tCalc! geq 5 (
			echo --------CALCULATED with License: !ansj! --- Processors: !numPro!----------
			goto :eof
		)
		echo  ------------ COULDN'T CALCULATE ------------- & echo.
		echo PROBABLE REASONS:
		echo       1. License may not be available.
		echo       2. Solution Request from WB not removed.
		echo       3. Error in Input File "check file.err".
		echo       4. or Early eof in main input file. & echo.
		echo  ------------ ----------------- ------------- & echo.
		copy "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" "D:\%proj_Num%\ANSYS\f!job!-!lk!-lic-!ansj!.out"
	 )
	REM TIMEOUT /T 5	
	set Start100S=!tBackUp!
	call Timer.bat StopTimer	
	call Timer.bat DisplayTimerResult
	echo Time Used: !elTime!
	if !tCalc! geq 15 (
		echo ------------------CALCULATED after retry: %%c-----------------
		goto :eof
	)
	echo ----------COULD NOT CALCULATE Try: %%c----------
	
	timeout /t 60
	
)
goto :eof
