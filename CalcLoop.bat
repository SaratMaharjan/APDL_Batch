REM call:%*

:calc
echo ---------------STARTING CALCULATION------------------
del D:\%proj_Num%\ANSYS\*.lock

for /l %%c in (1 1 2)  do (
	call Timer.bat StartTimer
	echo.
	set tBackUp=!Start100S!
	echo. Starting License Loop
	echo.

	for /l %%r in (!startValue! 1 !endValue!) do (
	REM for %%r in (4 3 2) do (
		
		REM licenses anfang
			REM echo %%r
			set numPro=2
			if %%r equ 1 (
				set ansj=struct
				set numPro=4
			)
			if %%r equ 2 (
				set ansj=struct
			)
			if %%r equ 3 (
				set ansj=prfnls
			)
			if %%r equ 4 (
				set ansj=stba
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
			REM echo source %d% : !location!
		REM licenses ende

		call Timer.bat StartTimer

	REM anfang Call ANSYS
		if %d% equ 1 (
		echo.
		echo "C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS"

		echo.>> D:\%proj_Num%\ANSYS\smAPDL.bat
		echo "C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS" >> D:\%proj_Num%\ANSYS\smAPDL.bat
		echo.

		"C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS"
		)

		if %d% equ 2 (
		echo.
		echo "C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS" -j "file2"

		echo.>> D:\%proj_Num%\ANSYS\smAPDL.bat
		echo "C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS" -j "file2" >> D:\%proj_Num%\ANSYS\smAPDL.bat
		echo.

		"C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe" -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz "R:\Maharjan\%proj_Num%"^
 -redirect !redirect! -i "R:\Maharjan\%proj_Num%\s.in" -o "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" -dir "D:\%proj_Num%\ANSYS" -j "file2"
		)
	REM ende Call ANSYS

		REM timeout /t 10

		call Timer.bat StopTimer
		call Timer.bat DisplayTimerResult
		REM echo Time Used: !elTime!
		REM set tim=!tCalc!
		REM echo !tim!

		if !tCalc! geq 5 (
			echo.
			echo --------CALCULATED with License: !ansj! --- Processors: !numPro!----------
			echo.
			goto :checkOuter
		)
		REM print message anfang
		echo.
		echo  ------------ COULDN'T CALCULATE ------------- & echo.
		echo PROBABLE REASONS:
		echo       1. License may not be available.
		echo       2. Solution Request from WB not removed.
		echo       3. Error in Input File "check file.err".
		echo       4. or Early eof in main input file. & echo.
		echo  ------------ ----------------- ------------- & echo.
		copy "D:\%proj_Num%\ANSYS\f!job!-!lk!.out" "D:\%proj_Num%\ANSYS\f!job!-!lk!-lic-!ansj!.out"

		echo.
		echo. !ansj! try Failed
		echo.
		REM print message ende
	 )

	:checkOuter
	echo. License Loop Finished
	echo.

	set Start100S=!tBackUp!
	call Timer.bat StopTimer
	call Timer.bat DisplayTimerResult

	if !tCalc! geq 15 (
		echo.
		echo ------------------ CALCULATED after retry: !c! -----------------
		echo.
		goto :eof
	)
	echo.
	echo ---------- COULD NOT CALCULATE Try: !c! ----------
	echo.
	timeout /t 30

)
goto :eof
