REM call:%*

:calc
echo ---------------STARTING CALCULATION------------------
del *.lock >nul 2>&1
del *.abt >nul 2>&1

for /l %%c in ( 1 1 1 ) do (
	REM call timer.bat startTimer
	echo.
	REM set tBackUp=!Start100S!
	echo. Starting License Loop
	echo.

	set retry=%%c

	for /l %%r in ( !startValue! 1 !endValue! ) do (

		REM licenses anfang
			REM echo %%r
			set numPro=!numPro!

			if %%r equ 1 (
				REM set ansj=struct
				set ansj=ansys
			) else if %%r equ 2 (
				set ansj=mech_2
			) else if %%r equ 3 (
				REM set ansj=stba
				set ansj=meba
			) else if %%r equ 4 (
				set ansj=preppost
			) else (
				set ansj=ansys
			)

			echo License: !ansj!
			echo Processors: !numPro!
			echo Project: %proj_Num%
			echo source %d% : !location!
		REM licenses ende

		call timer.bat startTimer
		(echo 0) > license.txt

	REM anfang Call ANSYS
		del "f!job!-!lk!.err" >nul 2>&1

		REM if %d% equ 1 (
			REM set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 REM -redirect !redirect! -i "!location!\s.in" -o "f!job!-!lk!.out" -extVar !extVar!
		REM ) else (
			REM set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 REM -redirect !redirect! -i "!location!\s.in" -o "f!job!-!lk!.out" -j "f!job!-!lk!" -extVar !extVar!


			set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 -redirect !redirect! -i "s.in" -o "f!job!-!lk!.out" -j "f!job!-!lk!" -extVar !extVar!


		REM )

		echo.
		echo !apdlCMD!

		echo.>> sm-apdl.bat
		echo !apdlCMD! >> sm-apdl.bat
		echo.

		if %execute% equ 1 (
			!apdlCMD!
		)

	REM ende Call ANSYS

		REM timeout /t 10

		call timer.bat stopTimer
		call timer.bat displayTimerResult
		set /a mins=!tCalc!/60
		echo                        REM +++++++ Time Required: !tCalc! Minutes OR !mins! Hours +++++++ >> sm-apdl.bat
		REM echo Time Used: !elTime!
		REM set tim=!tCalc!
		REM echo !tim!

		if %execute% equ 1 (
			set /p inPrep=<license.txt
		) else (
			set inPrep=1
		)
		echo.
		echo isLicenseAvailable: !inPrep!
		echo.

		REM if !tCalc! geq 5 (
		if !inPrep! equ 1 (
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
		echo       4. Early eof in Input Files. & echo.
		echo  ------------ ----------------- ------------- & echo.
		copy "f!job!-!lk!.out" "f!job!-!lk!-lic-!ansj!.out"

		echo.
		echo. !ansj! try Failed
		echo.
		REM print message ende
	 )

	:checkOuter
	echo. License Loop Finished
	echo.

	REM set Start100S=!tBackUp!
	REM call timer.bat stopTimer
	REM call timer.bat displayTimerResult

	REM if !tCalc! geq 15 (
	if !inPrep! equ 1 (
		echo.
		echo ------------------ CALCULATED after retry: !retry! -----------------
		echo.
		goto :eof
	)
	echo.
	echo ---------- COULD NOT CALCULATE Try: !retry! ----------
	echo.
	timeout /t 900

)

goto :eof

