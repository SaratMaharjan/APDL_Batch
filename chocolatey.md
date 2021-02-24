# Chocolatey

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install xnview firefox dropbox googlechrome vscode peazip.install 7zip.install -y

choco feature enable -n-autoUninstaller
choco uninstall firefox -y

choco upgrade all -y

choco uninstall spotify -y

choco list -l
