REM call:%*

:calc
echo ---------------STARTING CALCULATION------------------
del !wDir!\*.lock

for /l %%c in ( 1 1 1 ) do (
	REM call Timer.bat StartTimer
	echo.
	REM set tBackUp=!Start100S!
	echo. Starting License Loop
	echo.

	set retry=%%c

	for /l %%r in ( !startValue! 1 !endValue! ) do (
	REM for %%r in ( 4 3 2 ) do (
		
		REM licenses anfang
			REM echo %%r
			set numPro=2
			if %%r equ 1 (
				set ansj=struct
				set numPro=4
			) else if %%r equ 2 (
				set ansj=struct
			) else if %%r equ 3 (
				set ansj=prfnls
			) else if %%r equ 4 (
				set ansj=stba
			) else if %%r equ 5 (
				set ansj=ansys
			) else (
				set ansj=preppost
			)

			echo License: !ansj!
			echo Processors: !numPro!
			echo Project: %proj_Num%
			echo source %d% : !location!
		REM licenses ende

		call Timer.bat StartTimer
		(echo 0) > !wDir!\license.txt

	REM anfang Call ANSYS

		if %d% equ 1 (
			set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 -redirect !redirect! -i "!location!\s.in" -o "!wDir!\f!job!-!lk!.out" -dir "!wDir!"
		) else (
			set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 -redirect !redirect! -i "!location!\s.in" -o "!wDir!\f!job!-!lk!.out" -dir "!wDir!" -j "file2"
		)

		echo.
		echo !apdlCMD!

		echo.>> !wDir!\smAPDL.bat
		echo !apdlCMD! >> !wDir!\smAPDL.bat
		echo.

		if %execute% equ 1 (		
			!apdlCMD!
		)

	REM ende Call ANSYS

		REM timeout /t 10

		call Timer.bat StopTimer
		call Timer.bat DisplayTimerResult
		REM echo Time Used: !elTime!
		REM set tim=!tCalc!
		REM echo !tim!

		if %execute% equ 1 (
			set /p inPrep=<!wDir!\license.txt
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
		copy "!wDir!\f!job!-!lk!.out" "!wDir!\f!job!-!lk!-lic-!ansj!.out"

		echo.
		echo. !ansj! try Failed
		echo.
		REM print message ende
	 )

	:checkOuter
	echo. License Loop Finished
	echo.

	REM set Start100S=!tBackUp!
	REM call Timer.bat StopTimer
	REM call Timer.bat DisplayTimerResult

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
	timeout /t 30

)

goto :eof

