
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname == "ansys2"
  source D:/Dropbox/VIM/vimrc.vim
elseif hostname == "Smaharjan"
  source E:/SM/VIM/vimrc.vim
else
  source C:/users/Sarat/Dropbox/VIM/vimrc.vim
endif
