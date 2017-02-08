'run Batch File
const module_name  = "runBatch"         'this name must be unique !!!
const module_ver   = "0.001a"            'version

sub RunBatch
  Dim shell	
  set shell=createobject("wscript.shell")	
  shell.Run "%comspec% /c D:\zCore\SM.bat"
end sub

' name "Init" is required, its called automatically during initialization to create menu items
sub Init
  addMenuItem "&Run Batch File","Run Batch File","RunBatch"
end sub