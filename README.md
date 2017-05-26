# APDL_Batch

# My Notes

##VIM
	<pre>
	* :changes - to view changes
	* :gv - reselect last selection
	* # - Search words under Cursor backwards
	* * - Search words under Cursor forwards
	* :%s/pattern//gn - count number of occurences of pattern
	* To search and replace in selection
		press :, selection symbol auto appears then press s/pattern/replacement/gc
	* :g; to go to last edit position, mapped to g-
	* gi command switches Vim to Insert mode and places cursor in the same position as where Insert mode was stopped last time.
	* byw - yank word under cursor
	* viw - select word under cursor
	* :ve - to see version Information
	* :argdo %s/file:\/\/\/.\\/file: /gc - Replace in all buffers.... SEE 19
	* :sp filename for a horizontal split
			:vsp filename or :vs filename for a vertical split
			If no filename give same file opens
	*  :%s/.\{80}/&\r/g - New line after 80 charachters (&\r means Match and New Line)* zj - move down to top of next fold
					zk	- move up to bottom of previous fold
	* :vimgrep pattern **/*.ext - to search recursively in folder
	* to open all *.in Files
			:args *.in
			:tab all
	* to search and replace in all open buffers/args	, e means ignore error - match not found
			:bufdo %s/cmd/command/ge
			:add | update to save files automatically
			:arg *.cpp	All *.cpp files in current directory.
			:argadd *.h	And all *.h files.
			:arg	Optional: Display the current arglist.
			:argdo %s/pattern/replace/ge | update	Search and replace in all files in arglist. - | update to save the files

				:%s#\($\n\s*\)\+\%$##
				Note that this removes all trailing lines that contain only whitespace. To remove only truly "empty"lines, remove the \s* from the above command.
					Explanation:
					\( ..... Start a match group
					$\n ... Match a new line (end-of-line character followed by a carriage return).
					\s* ... Allow any amount of whitespace on this new line
					\) ..... End the match group
					\+ ..... Allow any number of occurrences of this group (one or more).
					\%$ ... Match the end of the file

				SEARCH AND REPLACE
					:%s/foo/bar/g
						Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.
						g means global: all occurence in a line.... when not used. only first occurence
					:s/foo/bar/g
						Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.
					:%s/foo/bar/gc
						Change each 'foo' to 'bar', but ask for confirmation first.
					:%s/\<foo\>/bar/gc
						Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.
					:%s/foo/bar/gci
						Change each 'foo' (case insensitive) to 'bar'; ask for confirmation.
						This may be wanted after using :set noignorecase to make searches case sensitive (the default).
					:%s/foo/bar/gcI
						Change each 'foo' (case sensitive) to 'bar'; ask for confirmation.
						This may be wanted after using :set ignorecase to make searches case insensitive.

	* :mksession ~/mysession.vim		OR :mks
				":so{urce} ~/mysession.vim

	* To close all TABS
			Shortest/simplest/fastest way would be:
				:qa
			To save work in all tabs and quit:
				:wqa

	* :ls	for list of open buffers
			:bp previous buffer
			:bn next buffer
			:bn (n a number) move to n'th buffer
			:b <filename-part>
			:b fileName : to switch to file
			:b# go to last visited file.... so switching easy

	*:scriptnames -shows all loaded scripts

	* Ctrl-W s and Ctrl-W v to split the current window horizontally and vertically. You can also use :split and :vertical split (:sp and :vs)
	* Vap to select Paragraph
	* ,m to activate highlights.vim - then numbers in Number Pads to assign highlight group to selection
	* Toggle case 'HellO' to 'hELLo' with g~ then a movement.
			Uppercase 'HellO' to 'HELLO' with gU then a movement.
			Lowercase 'HellO' to 'hello' with gu then a movement.
	* Use [Num]gt to go to tab Number
	</pre>

##GIT
	```
	git config --global user.name "saratmaharjan"
	git config --global user.email sarat.maharjan@gmail.com"
	git config --global color.ui true

	git config remote.origin.url https://saratmaharjan:password@github.com/saratmaharjan/vim.git
	git config remote.origin.url https://saratmaharjan:password@github.com/saratmaharjan/APDL_Batch.git

	git init NAME
	git clone URL !To get repository to LOCAL directory
	git status !to check changes
	git add/rm !to add or remove files
	git commit !to commit for push
	git pusht !to update the repository
	git pull origin master !to Update from repository
	```

##OTHERS
	```
	*. Autocad Command: IMAGEFRAME

	* To use macros.xla: In excel: start-add-ins and add macros.xla

	* Replace with ^p to replace with new line. NOTEPAD++??

	* ren ???????????.jpg	????????1??.jpg :::replaces anything to 1 and third last position.

	* forfiles /m *.jpg /c "cmd /c ren @file prefix@file" 		:: adding prefix to file Name
			Recursively rename file extensions
			forfiles /S /M *.ext1 /C "cmd /c rename @file @fname.ext2"

			Remove file extensions
			forfiles /S /M *.ext /C "cmd /c rename @file @fname"

			Add prefix to file names
			forfiles /S /M *.jpg /C "cmd /c rename @file photo@file"

			Handling names with white spaces
			forfiles /M *.jpg /C "cmd /c rename @file \"@fname - pic.jpg\""

	* Add suffix to File Name
			for %a in (*.txt) do ren "%~a" "%~naThingsToAdd%~xa"

	* AutoCAD
			IMAGEFRAME command in AUTOCAD
				rtdisplay -> 0
			Show open/show dialog boxes
				filedia : 1
			Useonly one window for multiple drawing
				taskbar -> 0
			Hide IMAGE FRAME
				imageframe = 0
			Back to AutoCAD classic View
				_-TOOLBAR Draw _Show
				_-TOOLBAR Modify _Show
				_-TOOLBAR Properties _Show
				_-TOOLBAR Layers _Show
				_-TOOLBAR Styles _Show
				_-TOOLBAR Standard _Show
				_RIBBONCLOSE
				MENUBAR 1

	* Word template location : %appdata%\Microsoft\Templates\

	* Right click on "My Computer" and go to Properties > Advanced System Settings > Environment Variables and create a new System Variable called SPACECLAIM_STARTUP_TRACE and set the value to 1.
	```
