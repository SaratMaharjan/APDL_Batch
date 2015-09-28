NumPadDot::Send, {ASC 0046}

#space::Run www.google.com.np

;#n::
;Run "C:\Program Files (x86)\Notepad++\notepad++.exe"
;return

#v::
Run "C:\Users\Sarat\Dropbox\VimInstall\Vim\vim74\gvim.exe"
Return

;#c::
;Run "C:\Program Files (x86)\Citavi 4\bin\Citavi.exe"
;return

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

#a::Run "C:\_________Drive"

;#y::^
;;Run "C:\Program Files (x86)\Everything\Everything.exe"
;Run "C:\locate32\locate32.exe"
;return

;#w::
;Run "C:\__Drive__\German\_____Dictionaries\Office Bibliothek_Duden_Brockhaus_Langenscheidt_Meyer"
;return

^SPACE::  Winset, Alwaysontop, , A

;#v::Run "C:\Users\HP\shared1\VirtualShare"

#^::Run "C:\Users\HP\Desktop\Mechanical APDL (ANSYS) 14.0.lnk"

;#1::Run "C:\Users\HP\shared1\VirtualShare\geometry.txt"



#IfWinActive ahk_class CabinetWClass
^!n::
;If Ctrl+Alt+N is pressed in Windows Explorer
 
WinGetActiveTitle, title

; Display input box for filename
InputBox, UserInput, Enter Name (example: GoodFile), , , 400, 100
 
; User pressed cancel
If ErrorLevel
	Return
 
; Create file
FileAppend, , %title%\%UserInput%.txt
run %title%\%UserInput%.txt

return
#IfWinActive





#IfWinActive ahk_class CabinetWClass
^!m::
;If Ctrl+Alt+m is pressed in Windows Explorer
 
; get full path from open windows
WinGetText, FullPath, A
 
; split up result (returns paths seperated by newlines [also lame])
StringSplit, PathArray, FullPath, `n
 
; get first item
FullPath = %PathArray1%
StringTrimRight, path1, FullPath, 1
StringTrimLeft, FullPath, path1, 9

FileMove,C:\Users\HP\shared1\VirtualShare\JobFiles\*.*, %FullPath%\*.*
;msgBox, %FullPath%

return
#IfWinActive


;To generate file to change working directory
#IfWinActive ahk_class CabinetWClass
^!w::
;If Ctrl+Alt+N is pressed in Windows Explorer

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
 
; display input box for file name
UserInput = cdir

text = /CWD,'%FullPath%'
;msgbox,%text%
 
; user pressed cancel
if ErrorLevel
    return
 
; success! output file with user input

else
	filePath = %FullPath%\%UserInput%.mac
	;msgbox, %filePath%
	FileDelete, %filePath%
	FileAppend, %text% ,%filePath%
	;run %filePath%

FileCopy,%FullPath%\%UserInput%.mac, C:\Users\HP\shared1\VirtualShare\forHost\*.*,1
;msgBox, Created and Copied
run C:\Users\HP\shared1\VirtualShare\forHost\cdir.mac

return
#IfWinActive





;To Update Maximum Values
#IfWinActive ahk_class CabinetWClass
^!c::
;If Ctrl+Alt+Y is pressed in Windows Explorer

; get full path from open windows
WinGetText, FullPath, A
 
; split up result (returns paths seperated by newlines [also lame])
StringSplit, PathArray, FullPath, `n
 
; get first item
FullPath = %PathArray1%
StringTrimRight, path1, FullPath, 1
StringTrimLeft, FullPath, path1, 9
;msgBox, %FullPath%
 
; an error occurred with the SetWorkingDir directive
if ErrorLevel
	return

FileCopy,%FullPath%\maxValues.txt, C:\Users\HP\shared1\VirtualShare\_MaxValueFile\*.*,1
msgBox, Updated!!!
;run \\VBOXSVR\VirtualShare\_MaxValueFile\maxValues.txt

return
#IfWinActive


!x::ToggleWinMinimize("Microsoft Excel")
!c::ToggleWinMinimize("Java")
!v::ToggleWinMinimize("win7_64Bit")



;FUNCTIONS**************************************************************
ToggleWinMinimize(TheWindowTitle)
{
SetTitleMatchMode,2
DetectHiddenWindows, Off
IfWinActive, %TheWindowTitle%
{
WinMinimize, %TheWindowTitle%
}
Else
{
IfWinExist, %TheWindowTitle%
{
WinGet, winid, ID, %TheWindowTitle%
DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
}
}
Return
}
