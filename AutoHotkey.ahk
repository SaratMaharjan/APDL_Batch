; This script has a special filename and path because it is automatically launched when you run the program directly.
; Also, any text file whose name ends in .ahk is associated with the program, which means that it can be launched simply by double-clicking it.
; You can have as many .ahk files as you want, located in any folder.
; You can also run more than one .ahk file simultaneously and each will get its own tray icon.

;If problem with encoding: set bomb in VIM and save

SetTitleMatchMode, RegEx

; Set window always on TOP
^!space::  Winset, Alwaysontop, , A

; Numpad , replaced by .
; NumPadDot::Send, {ASC 0046}
NumPadDot::Send, {.}
; F1 replaced by Control + F1
#UseHook
F1::Send {Esc}
#UseHook off
^F1::Send {F1}

; Get Computer Name
#1::Msgbox, %A_ComputerName%
; Get Windows Title
#2::
  WinGetTitle, Title, A
  MsgBox, The active window is "%Title%".
Return

;region APDL mouse settings
#IfWinActive, ^ANSYS
  RButton::
    SendInput {Ctrl down}{RButton down}
    Keywait, RButton
    SendInput {RButton up}{Ctrl up}
  Return

  MButton::
    SendInput {Ctrl down}{LButton down}
    Keywait, MButton
    SendInput {Ctrl up}{LButton up}
  Return
#IfWinActive
;ende APDL mouse

;region ANSYS Mechanical
#IfWinActive, Mechanical.*ANSYS
  <::  Send {F9}

  ^<::
    SendInput {Ctrl down}{F9 down}
    SendInput {F9 up}{Ctrl up}
  Return

  +<::
    SendInput {Shift down}{F9 down}
    SendInput {F9 up}{Shift up}
  Return

  z:: Send {F7}

  F5::
#IfWinActive
;ende APDL mouse

;region RSTAB
#IfWinActive, RSTAB
  RButton::
    SendInput {Ctrl down}{MButton down}
    Keywait RButton
    SendInput {MButton up}
    SendInput {Ctrl up}
  Return

  +RButton::
    SendInput {RButton down}
    Keywait RButton
    SendInput {RButton up}
    SendInput {Shift up}
  Return
#IfWinActive
;ende RSTAB mouse

;region Spaceclaim hide unhide
#IfWinActive, SpaceClaim$
  <::
    ;Click Right
    ;sleep, 20
    ;Send {Down 7}
    ;Send {Enter}
    SendInput {Ctrl down}{h down}
    SendInput {Ctrl up}{h up}
  Return

  ^<::
    ;Click Right
    ;sleep, 20
    ;Send {Down 8}
    ;Send {Enter}
    SendInput {Alt down}{h down}
    SendInput {Alt up}{h up}
  Return

  ^T::

  F5::

  F6::

  LWin::F4
  ; RButton::
  ;   if (GetKeyState("F4"))
  ;   {
  ;     SendInput {LButton down}
  ;     KeyWait RButton
  ;     SendInput {Esc}
  ;   } else {
  ;     SendInput {RButton down}
  ;     KeyWait RButton
  ;     SendInput {RButton up}
  ;   }
  ; Return

  ; MButton::
  ;   SendInput {Ctrl down}{MButton down}
  ;   Keywait MButton
  ;   SendInput {Ctrl up}{MButton up}
  ;   ;Send {Esc}
  ; Return

  ; ^RButton::
  ;   SendInput $~{MButton down}
  ;   Keywait Ctrl
  ;   SendInput $~{MButton up}
  ;   ;Send {Esc}
  ; Return

Return
#IfWinActive
;ende

;region Creo Mouse Settings
#IfWinActive, CCCCCreo Elements/Direct 3D Access
  RButton::MButton

  MButton::RButton

  WheelDown::WheelUp

  WheelUp::WheelDown

  ^ & LButton::
    SendInput {RButton down}
    Keywait LButton
    SendInput {RButton up}
    ;GetKeyState, state, Ctrl
    ;if state = D
    ;{
      ;click down right
      ;keywait LButton
      ;click up right
      ;Return
    ;}
  Return

  ^RButton::
    GetKeyState, state, Ctrl
    ;;MsgBox "Control Key State: " %state%
    if state = D
    {
      ;SendInput {MButton down}
      ;Keywait RButton
      ;SendInput {MButton up}
      click down middle
      keywait RButton
      click up middle
      Return
    }
  Return
#IfWinActive
;ende CREO mouse settings

#!w::
  if(InStr(A_ComputerName,"ansys2")){
    Run "C:\Users\sarat\Dropbox\zCore\run-ansys.bat"
  } else {
    Run "C:\Users\asus\Dropbox\zCore\run-ansys.bat"
  }
return

#k::
  if(InStr(A_ComputerName,"ansys2")){
    Run "C:\Users\sarat\dropbox\_Keypirinha\keypirinha.exe"
  } else {
    Run "C:\Users\sarat\dropbox\_Keypirinha\keypirinha.exe"
  }
return

#u:: Run "C:\Users\Maharjan\Desktop\untermStrich.url"

#IfWinActive ahk_class CabinetWClass
  #.::
    ; FullPath := GetActivePath()
    for w in ComObjCreate("Shell.Application").Windows
      Fullpath := w.Document.Folder.Self.Path
    ; ; an error occurred with the SetWorkingDir directive
    ;   if ErrorLevel
    ;     return
    ; msgBox % FullPath
    run, %ComSpec% /c "code .", %FullPath%
  return
#IfWinActive

;region Delete Images
#IfWinActive ahk_class CabinetWClass
  #p::
    ; FullPath := GetActivePath()
    for w in ComObjCreate("Shell.Application").Windows
      Fullpath := w.Document.Folder.Self.Path
    ; an error occurred with the SetWorkingDir directive
      if ErrorLevel
        return
    ;FileCopy,D:\delPics.bat,%FullPath%\*,*,1
    ;Run %FullPath%\delPics.bat
    ;FileRecycle,%FullPath%\delPics.bat
      ;FileRecycle,%FullPath%\*.jpg
      ;FileRecycle,%FullPath%\*.tif
      ;FileRecycle,%FullPath%\*.tiff
      ;FileRecycle,%FullPath%\*.png
      ;FileRecycle,%FullPath%\*.lis
      ;FileRecycle,%FullPath%\*.csv
    msgBox, Files Sent to Recycle Bin from %FullPath% !!!
  return
#IfWinActive
;ende Delete Images

;region Create File works only on win 7
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
      InputBox, UserInput, Enter Name (Example: GoodFile.ext), , , 400, 100
    ; User pressed cancel
      If ErrorLevel
        Return
    ; Create file
      FileAppend, , %FullPath%\%UserInput%
      ;run %FullPath%\%UserInput%
  return
#IfWinActive
;ende Create File

;region FUNCTIONS
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
;ende Functions

; ;region Delete Temporary Files
; #IfWinActive ahk_class CabinetWClass
;   #ü::
;     ; get full path from open windows
;       WinGetText, FullPath, A
;     ; split up result (returns paths seperated by newlines [also lame])
;       StringSplit, PathArray, FullPath, `n
;     ; get first item
;       FullPath = %PathArray1%
;       StringTrimRight, path1, FullPath, 1
;       StringTrimLeft, FullPath, path1, 9
;       ;msgbox, %FullPath%
;     ; an error occurred with the SetWorkingDir directive
;       if ErrorLevel
;         return
;     ;FileCopy,D:\delPics.bat,%FullPath%\*,*,1
;     ;Run %FullPath%\delPics.bat
;     ;FileDelete,%FullPath%\delPics.bat
;       FileDelete,%FullPath%\*.bcs
;       FileDelete,%FullPath%\*.dbb
;       FileDelete,%FullPath%\*.do3
;       FileDelete,%FullPath%\*.ema
;       FileDelete,%FullPath%\*.emat
;       FileDelete,%FullPath%\*.esa
;       FileDelete,%FullPath%\*.esav
;       FileDelete,%FullPath%\*.ful
;       FileDelete,%FullPath%\*.full
;       FileDelete,%FullPath%\*.ldh
;       FileDelete,%FullPath%\*.mnt
;       FileDelete,%FullPath%\*.mod
;       FileDelete,%FullPath%\*.osa
;       FileDelete,%FullPath%\*.osav
;       FileDelete,%FullPath%\*.pcs
;       FileDelete,%FullPath%\*.pvt
;       FileDelete,%FullPath%\*.r00
;       FileDelete,%FullPath%\*.r001
;       FileDelete,%FullPath%\*.r002
;       FileDelete,%FullPath%\*.r003
;       FileDelete,%FullPath%\*.r004
;       FileDelete,%FullPath%\*.r005
;       FileDelete,%FullPath%\*.r006
;       FileDelete,%FullPath%\*.r007
;       FileDelete,%FullPath%\*.r008
;       FileDelete,%FullPath%\*.r009
;       FileDelete,%FullPath%\*.nr00
;       FileDelete,%FullPath%\*.nr001
;       FileDelete,%FullPath%\*.nr002
;       FileDelete,%FullPath%\*.nr003
;       FileDelete,%FullPath%\*.nr004
;       FileDelete,%FullPath%\*.nr005
;       FileDelete,%FullPath%\*.nr006
;       FileDelete,%FullPath%\*.nr007
;       FileDelete,%FullPath%\*.nr008
;       FileDelete,%FullPath%\*.nr009
;       FileDelete,%FullPath%\*.rdb
;       FileDelete,%FullPath%\*.sta
;       FileDelete,%FullPath%\*.tri
;       FileDelete,%FullPath%\*.lock
;     msgBox, Files Deleted!!!
;   return
; #IfWinActive
; ;ende Delete Temp Files Ansys

;region Local Locations
; #a::
;   if(InStr(A_ComputerName,"SMAHARJAN") || InStr(A_ComputerName,"ansys2")){
;     run "R:\Maharjan"
;   } else {
;     run "C:\_________Drive"
;   }
; return

;#n::
  ;if(InStr(A_ComputerName,"SMAHARJAN")){
    ;Run "E:\Installs\Notepad++\notepad++.exe"
  ;} else {
    ;Run "E:\Maharjan\Notepad++\notepad++.exe"
  ;}
;return

; #v::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "E:\SM\VIMinstall\Vim\vim80\gvim.exe"
;   } else if (InStr(A_ComputerName,"ansys2")) {
;     Run "D:\maharjan\VIMinstall\Vim\vim80\gvim.exe"
;   } else if (InStr(A_ComputerName,"hgebhardt1")) {
;     Run "D:\maharjan\VIMinstall\Vim\vim80\gvim.exe"
;   } else {
;     Run "C:\Users\Sarat\Dropbox\VimInstall\Vim\vim80\gvim.exe"
;   }
; return

; #c:: Run "C:\Program Files\Microsoft VS Code\Code.exe" -n

;#x::
  ;if(InStr(A_ComputerName,"SMAHARJAN")){
    ;Run "D:\zCore\setnetUse.bat"
  ;} else {
    ;Run "E:\maharjan\setnetUse.bat"
  ;}
;return

; #!r::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "D:\zCore\sm.bat"
;   } else {
;     Run "E:\maharjan\sm.bat"
;   }
; return

; #z::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "D:\zCore\zBar.exe"
;   } else {
;     Run "D:\zCore\zBar.exe"
;   }
; return

; #!c::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "snippingTool"
;   } else {
;     Run "snippingTool"
;   }
; return

; #+x::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "D:\zCore\replSolu.exe"
;   } else {
;     ;Run "D:\zCore\Zizorz.exe"
;   }
; return

; #!x::
;   if(InStr(A_ComputerName,"SMAHARJAN")){
;     Run "D:\zCore\replaceLines.exe"
;   }
; return


; #!w:: Run "C:\Program Files\ANSYS Inc\v182\ANSYS\bin\winx64\launcher.exe"
; ^!w:: Run "C:\Program Files\ANSYS Inc\v182\Framework\bin\Win64\runwb2.exe"
; #h:: Run "C:\Program Files\ANSYS Inc\v182\commonfiles\help\HelpViewer\ANSYSHelpViewer.exe"
; ^!v:: Run "E:\SM\vim"
; #b:: Run "R:\ansys\macros"
;#.:: Run "R:\Literatur\Eurocode\Normen-Hanbücher\Gescannt"
;#.:: Run "E:\SM\_modified-literatur-eurocode-normen-handbücher-gescannt"
; ^!s:: Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
;ende Local Locations

;region Internet Addresses
; #space::Run www.google.com.np

; #f::
;   Run "C:\Program Files (x86)\Mozilla Firefox\Firefox.exe"
; return

; #s::
;   Send, ^c
;   Run, http://www.google.com/search?q=%Clipboard%
; Return

; #g::
;   Send, ^c
;   Run, http://dict.leo.org/#/search=%Clipboard%&searchLoc=0&resultOrder=basic&multiwordShowSingle=on
; Return
;ende Internet Addresses

;region Not Necessary
  ;!x::ToggleWinMinimize("Microsoft Excel")
  ;!c::ToggleWinMinimize("Java")
  ;!v::ToggleWinMinimize("win7_64Bit")

  ;#IfWinActive ahk_class CabinetWClass ; for use in explorer.
    ;#c::
      ;ClipSaved := ClipboardAll
      ;Send !e
      ;Sleep 10
      ;Send ^c
      ;Run, cmd /K "cd `"%clipboard%`""
      ;Clipboard := ClipSaved
      ;ClipSaved =
    ;return
  ;#IfWinActive

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
;ende Not Necessary

;  ;region External Functions
;    ;region Volume
;      $Volume_Up::
;      +WheelUp::
;        {
;          Send {Volume_Up}
;          Gosub, vupdt
;          return
;        }

;      $Volume_Down::
;      +WheelDown::
;        {
;          Send {Volume_Down}
;          Gosub, vupdt
;          return
;        }

;      $Volume_Mute::
;        {
;          Send {Volume_Mute}
;          Gosub, vupdt
;          return
;        }

;      ; display volume bar
;      vupdt:
;      IfWinExist, ahkvolume
;      {
;        SoundGet, master_volume
;        SoundGet, v_m, master, mute
;        GuiControl,, MP, %master_volume%
;        if v_m = On
;          GuiControl,, Pic1, *Icon40 %a_windir%\system32\mmsys.cpl
;        else
;          GuiControl,, Pic1, *Icon1 %a_windir%\system32\mmsys.cpl
;          SetTimer,vclose, 2000
;        return
;      }
;      SoundGet, master_volume
;      SoundGet, v_m, master, mute

;      IfWinNotExist, ahkvolume
;      {
;        Gui, +ToolWindow -Caption +0x400000 +alwaysontop
;        Gui, Add, GroupBox, x3 y2 w40 h45 cblack,
;        Gui, Add, text, x97 y2 ,Volume:
;        Gui, Add, Progress,horizontal vMP x48 y18 w160 h20 c333cc,%master_volume%
;        if v_m = On
;          Gui, Add, pic, x7 y13 vPic1 icon40, %a_windir%\system32\mmsys.cpl
;        else
;          Gui, Add, pic, x7 y13 vPic1 icon1, %a_windir%\system32\mmsys.cpl
;          SysGet, screenx, 0
;          SysGet, screeny, 1
;          ; adjust display to show in bottom right corner
;          xpos:=screenx-275
;          ypos:=screeny-100
;          Gui, Show, NoActivate x%xpos% y%ypos% h48 w213, ahkvolume
;      }
;      SetTimer,vclose, 2000
;      return

;      vclose:
;      SetTimer,vclose, off
;      Gui, destroy
;      return
;    ;ende volume
;  ;ende External Commands

;region Capslock State
  ;~CapsLock::
  ;GetKeyState, state, CapsLock, T
  ;if state = D ;  D=Caps is OFF, turn it ON
  ;{
  ;;Progress, CWSilver CTGreen B2 ZH0 fs11 WS900 W1000 H28  X00 Y1050, CAPSLOCK ON
  ;Progress, CWfb7b55 CTfde3f9 B2 ZH0 fs11 WS900 W1000 H28 Y1050, CAPSLOCK ON
  ;}
  ;else if state = U ; U= Caps is ON, SET IT OFF
    ;{
      ;Progress, Off
    ;}
  ;return
;ende Capslock State

;region Numlock State
  ;~NumLock::
  ;GetKeyState, state, NumLock, T
  ;if state = D ;  D=Numpack is OFF, turn it ON
  ;{
    ;Progress, Off
  ;}
  ;else if state = U ; U= Numpad is ON, SET IT OFF
    ;{
      ;;Progress, CWSilver CTGreen B2 ZH0 fs11 WS900 W1000 H28  X00 Y1050, NUMPAD LOCKED
      ;Progress, CWfb7b55 CTfde3f9 B2 ZH0 fs11 WS900 W1000 H28 Y1050, NUMPAD LOCKED
    ;}
  ;return
;ende Numlock State

;region Useful Notes:
  ;MsgBox, 4,, Would you like to continue? (press Yes or No)
  ;IfMsgBox Yes
    ;MsgBox You pressed Yes.
  ;else
    ;MsgBox You pressed No.
;ende Useful Notes
