subst y: "C:\Users\asus\Dropbox\anakon"
subst z: "C:\Users\asus\Dropbox\zCore"
subst x: "F:\OneDrive - ANAKON GmbH\maharjan"

REM net use r: "\\192.168.99.1\server_lw_d"

start /d "C:\Users\asus\Google Drive (srtmjn@gmail.com)\PortableApps\PortableApps\_Keypirinha" keypirinha.exe
start /d "C:\Users\asus\Dropbox\zCore" AutoHotkey.exe

timeout /t 120
start /d "C:\Users\maharjan\Google Drive\PortableApps\PortableApps\SpeedCrunchPortable" SpeedCrunchPortable.exe

timeout /t 120
start /d "C:\Users\maharjan\Google Drive\PortableApps\PortableApps\__nirsoft_package_enc_1.20.28\SysinternalsSuite" procexp64.exe

timeout /t 120
start outlook.exe

timeout /t 300
start /d "C:\Program Files\OpenVPN\bin" openvpn-gui.exe
