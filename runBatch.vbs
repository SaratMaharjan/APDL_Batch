
Option Explicit
Dim shell

set shell=createobject("wscript.shell")
shell.Run "%comspec% /c D:\zCore\SM.bat"