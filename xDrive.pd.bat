subst y: "%userprofile%\Dropbox\anakon"
subst z: "%userprofile%\Dropbox\zCore"
subst x: "E:\anakon\OneDrive - ANAKON GmbH\maharjan"

net use r: "\\192.168.99.1\server_lw_d"

start /d "%userprofile%\dropbox\_Keypirinha" keypirinha.exe
start /d "%userprofile%\Dropbox\zCore" AutoHotkey.exe

REM timeout /t 120
REM start /d "%userprofile%\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe
start /d "E:\GoogleDrive\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe

REM timeout /t 120
start /d "E:\GoogleDrive\PortableApps\PortableApps\_Rainmeter" Rainmeter.exe

REM timeout /t 120
start /d "E:\GoogleDrive\PortableApps\PortableApps\StickiesPortable" StickiesPortable.exe

REM timeout /t 120
start /d "E:\GoogleDrive\PortableApps\PortableApps\__nirsoft_package_enc_1.20.28\SysinternalsSuite" procexp64.exe

REM timeout /t 120
start outlook.exe

start "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"

REM timeout /t 300
start /d "C:\Program Files\OpenVPN\bin" openvpn-gui.exe
