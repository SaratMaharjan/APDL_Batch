subst y: "%userprofile%\Dropbox\anakon"
subst z: "%userprofile%\Dropbox\zCore"
subst x: "E:\anakon\OneDrive - ANAKON GmbH\maharjan"

net use r: "\\192.168.99.1\server_lw_d"

start /d "%userprofile%\dropbox\_Keypirinha" keypirinha.exe
start /d "%userprofile%\Dropbox\zCore" AutoHotkey.exe

REM timeout /t 120
start /d "%userprofile%\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe

REM timeout /t 120
start /d "%userprofile%\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\_Rainmeter" Rainmeter.exe

REM timeout /t 120
start /d "%userprofile%\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\StickiesPortable" StickiesPortable.exe

REM timeout /t 120
start /d "%userprofile%\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\__nirsoft_package_enc_1.20.28\SysinternalsSuite" procexp64.exe

timeout /t 120
start outlook.exe

timeout /t 300
start /d "C:\Program Files\OpenVPN\bin" openvpn-gui.exe
