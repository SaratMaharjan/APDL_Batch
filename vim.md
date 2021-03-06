# VIM

<pre>
  :changes - to view changes

  :gv - reselect last selection

  # - Search words under Cursor backwards

  * - Search words under Cursor forwards

  :%s/pattern//gn - count number of occurences of pattern

  To search and replace in selection
    press :, selection symbol auto appears then press s/pattern/replacement/gc

  :g; to go to last edit position, mapped to g-

  gi command switches Vim to Insert mode and places cursor in the same position as
    where Insert mode was stopped last time.

  byw - yank word under cursor

  viw - select word under cursor

  :ve - to see version Information

  :argdo %s/file:\/\/\/.\\/file: /gc - Replace in all buffers.... SEE BELOW

  :sp filename for a horizontal split
      :vsp filename or :vs filename for a vertical split
      If no filename give same file opens

  :%s/.\{80}/&\r/g - New line after 80 charachters (&\r means Match and New Line)

  zj - move down to top of next fold

  zk - move up to bottom of previous fold

  :vimgrep pattern **/*.ext - to search recursively in folder

  to open all *.in Files
    :args *.in
    :tab all

  to search and replace in all open buffers/args  , e means ignore error - match not found
    :bufdo %s/cmd/command/ge
    :add | update to save files automatically
    :arg *.cpp  All *.cpp files in current directory.
    :argadd *.h  And all *.h files.
    :arg  Optional: Display the current arglist.
    :argdo %s/pattern/replace/ge | update  Search and replace in all files in arglist.
                        "- | update" to save the files

    :%s#\($\n\s*\)\+\%$##
    Note that this removes all trailing lines that contain only whitespace.
    To remove only truly empty lines, remove the \s* from the above command.
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

  :mksession ~/mysession.vim OR :mks
  :source ~/mysession.vim

  To close all TABS
    Shortest/simplest/fastest way would be:
      :qa
    To save work in all tabs and quit:
      :wqa

  :ls for list of open buffers
    :bp previous buffer
    :bn next buffer
    :bn (n a number) move to n'th buffer
    :b <filename-part>
    :b fileName : to switch to file
    :b# go to last visited file.... so switching easy

  :scriptnames -shows all loaded scripts

  Ctrl-W s and Ctrl-W v to split the current window horizontally and vertically.
  You can also use :split and :vertical split (:sp and :vs)

  Vap to select Paragraph

  ,m to activate highlights.vim - then numbers in Number Pads to assign highlight group to selection

  Toggle case 'HellO' to 'hELLo' with g~ then a movement.
      Uppercase 'HellO' to 'HELLO' with gU then a movement.
      Lowercase 'HellO' to 'hello' with gu then a movement.

  Use [Num]gt to go to tab Number
</pre>
