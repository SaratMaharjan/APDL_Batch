
@REM get HostName
  hostname.exe>hostname.txt
  set /p host=<hostname.txt
  echo Hostname: !host!
