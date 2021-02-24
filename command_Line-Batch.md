
# Windows Command Line

- rmdir PATH /s /q (delete folder with sub folders)
- dir C:\ /s | more
- tree c:\ | more
- dir /?
- dir c:\ /s /ahs
- date
- time
- date /t && time /t
- tzutil /?
- shutdown /?
- wmic bios get serialnumber
- wmic computersystem

- replace anything to 1 and third last position.
    ren ???????????.jpg ????????1??.jpg

  adding prefix to file Name
    forfiles /m *.jpg /c "cmd /c ren @file prefix@file"

  Recursively rename file extensions
    forfiles /S /M *.ext1 /C "cmd /c rename @file @fname.ext2"

  Remove file extensions
    forfiles /S /M *.ext /C "cmd /c rename @file @fname"

  Add prefix to file names
    forfiles /S /M *.jpg /C "cmd /c rename @file photo@file"

  Handling names with white spaces
    forfiles /M *.jpg /C "cmd /c rename @file \"@fname - pic.jpg\""

  Add suffix to File Name
    for %a in (*.txt) do ren "%~a" "%~naThingsToAdd%~xa"

  lan ip address
    ipconfig -> IPv4-Address

  taskkill /f /im someProcess.exe

  tasklist /nh | sort

  tasklist /? : for help

  NETWORKING:
<pre>
    ping
    tracert
    ipconfig /all
    nslookup
</pre>
