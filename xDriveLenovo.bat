subst z: "%userprofile%\Dropbox\zCore"
subst y: "%userprofile%\Dropbox\anakon"
REM subst x: "G:\OneDrive - ANAKON GmbH\maharjan"

REM net use r: "\\192.168.99.1\server_lw_d"

start /d "%userprofile%\Dropbox\_Keypirinha" keypirinha.exe
start /d "%userprofile%\Dropbox\zCore" AutoHotkey.exe

REM timeout /t 120
REM start /d "C:\Users\maharjan\Google Drive\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe

REM timeout /t 120
start /d "C:\Program Files\Process Hacker 2" ProcessHacker.exe

REM timeout /t 120
REM start outlook.exe

REM timeout /t 300
REM start /d "C:\Program Files\OpenVPN\bin" openvpn-gui.exe

start /d "C:\Users\sarat\AppData\Local\Microsoft\OneDrive" OneDrive.exe

start /d "C:\Program Files\Google\Drive" googledrivesync.exe
