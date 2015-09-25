; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a ; semicolon, such as this one, are comments.  They are not executed.
; This script has a special filename and path because it is automatically ; launched when you run the program directly.  Also, any text file whose ; name ends in .ahk is associated with the program, which means that it ; can be launched simply by double-clicking it.  You can have as many .ahk ; files as you want, located in any folder.  You can also run more than ; one .ahk file simultaneously and each will get its own tray icon.
; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it ; launches a web site in the default browser.  The second is Control+Alt+N ; and it launches a new Notepad window (or activates an existing one).  To ; try out these hotkeys, run AutoHotkey again, which will load this file.
; Note: From now on whenever you run AutoHotkey directly, this script ; will be loaded.  So feel free to customize it to suit your needs.
; Please read the QUICK-START TUTORIAL near the top of the help file.  ; It explains how to perform common automation tasks such as sending ; keystrokes and mouse clicks.  It also explains more about hotkeys.

;NumPadDot::Send, {ASC 0046}
#1::Msgbox, %A_ComputerName%
;!x::ToggleWinMinimize("Microsoft Excel")
;!c::ToggleWinMinimize("Java")
;!v::ToggleWinMinimize("win7_64Bit")
^space::  Winset, Alwaysontop, , A

;#!x::Run "D:\zCore\setnetUseS.bat"
#n::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "E:\Installs\Notepad++\notepad++.exe"
	} else {
		Run "D:\Maharjan\Notepad++\notepad++.exe"
	}
return
#v::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "E:\SM\VIMinstall\Vim\vim74\gvim.exe"
	} else {
		Run "D:\maharjan\VIMinstall\Vim\vim74\gvim.exe"
	}
return
#x::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "D:\zCore\setnetUse.bat"
	} else {
		Run "D:\maharjan\setnetUse.bat"
	}
return
#w::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "D:\zCore\runAnsys.bat"
	} else {
		Run "D:\maharjan\runAnsys.bat"
	}
return
#q::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "D:\zCore\runAnsysE.bat"
	} else {
		Run "D:\maharjan\runAnsysE.bat"
	}
return
#!r::
	if(InStr(A_ComputerName,"SMAHARJAN")){
		Run "D:\zCore\SM.bat"
	} else {
		Run "D:\maharjan\SM.bat"
	}
return

#y::
;Run "C:\Program Files (x86)\Everything\Everything.exe"
	Run "C:\locate32\locate32.exe"
return

;#w::
	;Run "C:\__Drive__\German\_____Dictionaries\Office Bibliothek_Duden_Brockhaus_Langenscheidt_Meyer"
;return

#u::Run "C:\Users\Maharjan\Desktop\untermStrich.url"
;#!e::Run "E:\SM\PortableApps\PortableApps\XYexplorer\XYplorerFree.exe"
^!p:: Run "E:\SM\PortableApps\StartPortableApps.exe"
^+c:: Run "E:\SM\PortableApps\PortableApps"
^!c:: Run "E:\SM\vim"

#!w:: Run "C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\launcher161.exe"
^!w:: Run "C:\Program Files\ANSYS Inc\v161\Framework\bin\Win64\runwb2.exe"
#h::Run "C:\Program Files\ANSYS Inc\v161\commonfiles\help\HelpViewer\ANSYSHelpViewer.exe"

#a::
	if(InStr(A_ComputerName,"SMAHARJAN") || InStr(A_ComputerName,"ANSYS2")){
		run "R:\Maharjan"
	} else {
		run "C:\__Drive__"
	}
return

#b::Run "R:\ansys\macros"
#.::Run "R:\Literatur\Eurocode\Normen-Hanbücher\Gescannt"

#space::Run www.google.com.np
#f::
	Run "C:\Program Files (x86)\Mozilla Firefox\Firefox.exe"
return
#s::
	Send, ^c
	Run, http://www.google.com/search?q=%Clipboard%
Return
#g::
	Send, ^c
	Run, http://dict.leo.org/#/search=%Clipboard%&searchLoc=0&resultOrder=basic&multiwordShowSingle=on
Return

;To delete Images
#IfWinActive ahk_class CabinetWClass
	#p::

		FullPath := GetActivePath()
		; an error occurred with the SetWorkingDir directive
		if ErrorLevel
			return

		;FileCopy,D:\delPics.bat,%FullPath%\*,*,1

		;Run %FullPath%\delPics.bat
		;FileDelete,%FullPath%\delPics.bat
		FileDelete,%FullPath%\*.jpg
		FileDelete,%FullPath%\*.tif
		FileDelete,%FullPath%\*.tiff
		FileDelete,%FullPath%\*.png
		;FileDelete,%FullPath%\*.lis
		;FileDelete,%FullPath%\*.csv
		msgBox, Files Deleted!!!

	return
#IfWinActive

;Delete Temporary Files
#IfWinActive ahk_class CabinetWClass
	#ü::

		; get full path from open windows
		WinGetText, FullPath, A
 
		; split up result (returns paths seperated by newlines [also lame])
		StringSplit, PathArray, FullPath, `n
 
		; get first item
		FullPath = %PathArray1%
		StringTrimRight, path1, FullPath, 1
		StringTrimLeft, FullPath, path1, 9

		;msgbox, %FullPath%
		 
		; an error occurred with the SetWorkingDir directive
		if ErrorLevel
			return

		;FileCopy,D:\delPics.bat,%FullPath%\*,*,1

		;Run %FullPath%\delPics.bat
		;FileDelete,%FullPath%\delPics.bat
		FileDelete,%FullPath%\*.bcs
		FileDelete,%FullPath%\*.dbb
		FileDelete,%FullPath%\*.do3
		FileDelete,%FullPath%\*.ema
		FileDelete,%FullPath%\*.emat
		FileDelete,%FullPath%\*.esa
		FileDelete,%FullPath%\*.esav
		FileDelete,%FullPath%\*.ful
		FileDelete,%FullPath%\*.full
		FileDelete,%FullPath%\*.ldh
		FileDelete,%FullPath%\*.mnt
		FileDelete,%FullPath%\*.mod
		FileDelete,%FullPath%\*.osa
		FileDelete,%FullPath%\*.osav
		FileDelete,%FullPath%\*.pcs
		FileDelete,%FullPath%\*.pvt
		FileDelete,%FullPath%\*.r00
		FileDelete,%FullPath%\*.r001
		FileDelete,%FullPath%\*.r002
		FileDelete,%FullPath%\*.r003
		FileDelete,%FullPath%\*.r004
		FileDelete,%FullPath%\*.r005
		FileDelete,%FullPath%\*.r006
		FileDelete,%FullPath%\*.r007
		FileDelete,%FullPath%\*.r008
		FileDelete,%FullPath%\*.r009
		FileDelete,%FullPath%\*.nr00
		FileDelete,%FullPath%\*.nr001
		FileDelete,%FullPath%\*.nr002
		FileDelete,%FullPath%\*.nr003
		FileDelete,%FullPath%\*.nr004
		FileDelete,%FullPath%\*.nr005
		FileDelete,%FullPath%\*.nr006
		FileDelete,%FullPath%\*.nr007
		FileDelete,%FullPath%\*.nr008
		FileDelete,%FullPath%\*.nr009
		FileDelete,%FullPath%\*.rdb
		FileDelete,%FullPath%\*.sta
		FileDelete,%FullPath%\*.tri
		FileDelete,%FullPath%\*.lock
		msgBox, Files Deleted!!!

	return
#IfWinActive

#IfWinActive ahk_class CabinetWClass ; for use in explorer.
	#c::
		ClipSaved := ClipboardAll
		Send !e
		Sleep 10
		Send ^c
		Run, cmd /K "cd `"%clipboard%`""
		Clipboard := ClipSaved
		ClipSaved =
	return
#IfWinActive

#IfWinActive ahk_class CabinetWClass
	^!n::
		; get full path from open windows
		WinGetText, FullPath, A
 
		; split up result (returns paths seperated by newlines [also lame])
		StringSplit, PathArray, FullPath, `n
 
		; get first item
		FullPath = %PathArray1%
		StringTrimRight, path1, FullPath, 1
		StringTrimLeft, FullPath, path1, 9

		;If Ctrl+Alt+N is pressed in Windows Explorer
		;WinGetActiveTitle, title

		; Display input box for filename
		InputBox, UserInput, Enter Name (example: GoodFile.ext), , , 400, 100
		 
		; User pressed cancel
		If ErrorLevel
			Return

		; Create file
		FileAppend, , %FullPath%\%UserInput%
		run %FullPath%\%UserInput%
	return
#IfWinActive

;#IfWinActive ahk_class CabinetWClass
	;^!m::
		;;If Ctrl+Alt+m is pressed in Windows Explorer
		 
		;; get full path from open windows
		;WinGetText, FullPath, A
		 
		;; split up result (returns paths seperated by newlines [also lame])
		;StringSplit, PathArray, FullPath, `n
		 
		;; get first item
		;FullPath = %PathArray1%
		;StringTrimRight, path1, FullPath, 1
		;StringTrimLeft, FullPath, path1, 9

		;FileMove,C:\Users\HP\shared1\VirtualShare\JobFiles\*.*, %FullPath%\*.*
		;;msgBox, %FullPath%
	;return
;#IfWinActive

;;To generate file to change working directory
;#IfWinActive ahk_class CabinetWClass
	;^!l::
		;;If Ctrl+Alt+N is pressed in Windows Explorer

		;; get full path from open windows
		;WinGetText, FullPath, A
		 
		;; split up result (returns paths seperated by newlines [also lame])
		;StringSplit, PathArray, FullPath, `n
		 
		;; get first item
		;FullPath = %PathArray1%
		;StringTrimRight, path1, FullPath, 1
		;StringTrimLeft, FullPath, path1, 9

		;;msgbox, %FullPath%
		 
		;; an error occurred with the SetWorkingDir directive
		;if ErrorLevel
			;return
		 
		;; display input box for file name
		;UserInput = cdir

		;text = /CWD,'%FullPath%'
		;;msgbox,%text%
		 
		;; user pressed cancel
		;if ErrorLevel
			;return
		 
		;; success! output file with user input

		;else
			;filePath = %FullPath%\%UserInput%.mac
			;;msgbox, %filePath%
			;FileDelete, %filePath%
			;FileAppend, %text% ,%filePath%
			;;run %filePath%

		;FileCopy,%FullPath%\%UserInput%.mac, C:\Users\HP\shared1\VirtualShare\forHost\*.*,1
		;;msgBox, Created and Copied
		;run C:\Users\HP\shared1\VirtualShare\forHost\cdir.mac

	;return
;#IfWinActive

;To Update Maximum Values
;#IfWinActive ahk_class CabinetWClass
	;^!c::
		;;If Ctrl+Alt+Y is pressed in Windows Explorer

		;; get full path from open windows
		;WinGetText, FullPath, A
		 
		;; split up result (returns paths seperated by newlines [also lame])
		;StringSplit, PathArray, FullPath, `n
		 
		;; get first item
		;FullPath = %PathArray1%
		;StringTrimRight, path1, FullPath, 1
		;StringTrimLeft, FullPath, path1, 9
		;;msgBox, %FullPath%
		 
		;; an error occurred with the SetWorkingDir directive
		;if ErrorLevel
			;return

		;FileCopy,%FullPath%\maxValues.txt, C:\Users\HP\shared1\VirtualShare\_MaxValueFile\*.*,1
		;msgBox, Updated!!!
		;;run \\VBOXSVR\VirtualShare\_MaxValueFile\maxValues.txt
	;return
;#IfWinActive

;FUNCTIONS**************************************************************
	ToggleWinMinimize(TheWindowTitle) {
		SetTitleMatchMode,2
		DetectHiddenWindows, Off
		IfWinActive, %TheWindowTitle%
		{
			WinMinimize, %TheWindowTitle%
		} else {
			IfWinExist, %TheWindowTitle%
			{
				WinGet, winid, ID, %TheWindowTitle%
				DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
			}
		}
		return
	}

	GetActivePath() {
		; get full path from open windows
		WinGetText, FullPath, A
		; split up result (returns paths seperated by newlines [also lame])
		StringSplit, PathArray, FullPath, `n
		; get first item
		FullPath = %PathArray1%
		StringTrimRight, path1, FullPath, 1
		StringTrimLeft, FullPath, path1, 9
		;msgbox, %FullPath%
		return FullPath
	}

