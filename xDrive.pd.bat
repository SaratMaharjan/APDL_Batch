subst y: "C:\Users\asus\Dropbox\anakon"
subst z: "C:\Users\asus\Dropbox\zCore"
subst x: "E:\anakon\OneDrive - ANAKON GmbH\maharjan"

net use r: "\\192.168.99.1\server_lw_d"

start /d "C:\Users\asus\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\_Keypirinha" keypirinha.exe
start /d "C:\Users\asus\Dropbox\zCore" AutoHotkey.exe

REM timeout /t 120
start /d "C:\Users\Asus\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe

REM timeout /t 120
start /d "C:\Users\maharjan\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\__nirsoft_package_enc_1.20.28\SysinternalsSuite" procexp64.exe

timeout /t 120
start outlook.exe

timeout /t 300
start /d "C:\Program Files\OpenVPN\bin" openvpn-gui.exe
