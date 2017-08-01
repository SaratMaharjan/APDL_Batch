REM call:%*

:calc
echo ---------------STARTING CALCULATION------------------
del !wDir!\*.lock >nul 2>&1
del !wDir!\*.abt >nul 2>&1

for /l %%c in ( 1 1 1 ) do (
	echo.
	echo. Starting License Loop
	echo.

	set retry=%%c

	for /l %%r in ( !startValue! 1 !endValue! ) do (
		REM licenses anfang
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
		(echo 0) > !wDir!\license.txt

		REM anfang Call ANSYS
		del "!wDir!\f!job!-!lk!.err" >nul 2>&1

		set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -verz !location!^
 -redirect !redirect! -i "!location!\!sourceFile!" -o "!wDir!\f!job!-!lk!.out" -dir "!wDir!" -j "f!job!-!lk!" -extVar !extVar!

		echo.
		echo !apdlCMD!

		echo.>> !wDir!\sm-apdl.bat
		echo !apdlCMD! >> !wDir!\sm-apdl.bat
		echo.

		if %execute% equ 1 (
			!apdlCMD!
		)
		REM ende Call ANSYS

		call timer.bat stopTimer
		call timer.bat displayTimerResult
		set /a mins=!tCalc!/60
		echo                        REM +++++++ Time Required: !tCalc! Minutes OR !mins! Hours +++++++ >> !wDir!\sm-apdl.bat

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

	if !inPrep! equ 1 (
		echo.
		echo ------------------ CALCULATED after retry: !retry! -----------------
		echo.
		goto :eof
	)

	echo.
	echo ---------- COULD NOT CALCULATE Try: !retry! ----------
	echo.
	timeout /t 60
)

goto :eof