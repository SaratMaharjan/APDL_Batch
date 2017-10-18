# APDL_Batch

  Main Contents are batch files to run ansys apdl calculation. Additionally contains tools and notes used often.

<!-- TOC -->

- [APDL_Batch](#apdl_batch)
  - [Notes](#notes)
    - [Node and NPM](#node-and-npm)
      - [Essential Globals](#essential-globals)
    - [Heroku](#heroku)
    - [VIM](#vim)
    - [GIT](#git)
      - [If chages made without creating branch](#if-chages-made-without-creating-branch)
        - [If no commits are made](#if-no-commits-are-made)
        - [If already commited](#if-already-commited)
    - [AutoCAD](#autocad)
    - [Windows Command Line](#windows-command-line)
    - [OTHERS](#others)

<!-- /TOC -->

## Notes

### Node and NPM

<pre>
  update global packages
    npm update -g
  list available scripts
    npm run
  list installed packages
    npm ls --depth 0
    npm ls --global --depth 0
</pre>

#### Essential Globals

- @angular/cli
- eslint
- eslint-config-google
- eslint-plugin-html
- eslint-plugin-import
- surge
- vsce

### Heroku

- Heroku CLI
- heroku-repo

### VIM

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

### GIT

Use of branches if possible. eg: bug/..., feature/..., refactor/..., style/...

<pre>
  git log --oneline --graph --decorate --all -20 (numbers of commits to display)

  git config --global alias.ssb "status -sb"
  git config --global alias.logo "log --oneline --decorate --graph --all"
  git config --global alias.who "shortlog -n -s --no-merges"
  git config --global alias.oneweek "log --since='1 week ago'"
  git config --global alias.fivedays "log --since='5 days ago'"

  git config --global user.name "smhrjn"
  git config --global user.email sarat.maharjan@gmail.com"
  git config --global color.ui true

  git config --global --unset-all diff.tool
  git config --global diff.tool vimdiff
  git config --global difftool.prompt false

  git config remote.origin.url https://smhrjn:password@github.com/smhrjn/vim.git
  git config remote.origin.url https://smhrjn:password@github.com/smhrjn/APDL_Batch.git

  git init NAME
  git clone URL (To get repository to LOCAL directory)
  git status (to check changes)
  git add/rm (to add or remove files)
  git commit (to commit for push)
  git push (to update the repository)
  git pull origin master (to Update from repository)

  git fetch -all : to update references with master

  git rebase other branch - makes commit clean, commits on other branch applied first and commits on current branch added, fast forward merge possible

  git stash save "stash name" (save changes for later)
  git stash apply stash@{index} (use stash with index, without stash@{index} uses last one)
  git stash list
  git stash drop stash@{index} (delete last stash)
  git stash -u (include untracked files too)
  git stash pop (apply + drop)
  git stash show stash@{index} (0 is latest)
  git stash clear (remove all stashes)
  git stash branch BRANCH-NAME (create new branch and apply the stash, and drop stash, useful if changed made but should be in other branch)

  ANNOTATION TAGS (represent release versions)
  git tag -a TAG-NAME commit-id-to-tag -m "message"
  git tag -a TAG-NAME -f commit-id-to-tag (to correct tag to other commit, use force option)
  git push origin TAG-NAME (to push tags to remote)
  git push origin BRANCH-NAME --tags (to push all tags)
  git tag --list
  git push origin :TAG-NAME (delete this tag from remote repo)
  git diff TAG-1 TAG-2

  LIGHTWEIGHT TAG
  git tag TAG-NAME
  git tag --list
  git show TAG-NAME
  git tag --delete TAG-NAME

  git remote show -v
  git remote add -m master NAME URL
  git remote add -t BRANCH NAME URL
  git remote add -f NAME URL

  git blame FILE -s

  TO INVESTIGATE BUG
  git bisect start
  git bisect HASH good
  git bisect HASH bad
  git bisect reset

  GIT LOCAL REMOTE REPO
  on remote folder
    git init --bare
  on working folder
    git init
    git add .
    git commit -m "message"
    git remote add origin file:///path-to-remote-folder
    git push origin master
  to clone
    git clone file:///path-to-remote-folder

  also look git-subtree.md
</pre>

#### If chages made without creating branch

##### If no commits are made

  <pre>
    git stash
    git checkout -b feature/new-feature
    git stash pop
  </pre>

##### If already commited

  <pre>
    git push origin development:fix/fix-name
    git checkout master
    git fetch
    git checkout development
    git checkout fix/fix-name
  </pre>

### AutoCAD

<pre>
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
</pre>

### Windows Command Line

<pre>
  replace anything to 1 and third last position.
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
</pre>

### OTHERS

<pre>
  To use macros.xla: In excel: start-add-ins and add macros.xla

  Replace with ^p to replace with new line. NOTEPAD++??

  Word template location : %appdata%\Microsoft\Templates\

  If Spaceclaim is slow: Right click on "My Computer" and go to
  Properties > Advanced System Settings > Environment Variables
  and create a new System Variable called SPACECLAIM_STARTUP_TRACE and set the value to 1.

  source: light-fs getify
  Arguments are the values you pass in,
  and parameters are the named variables inside the function that receive those passed in values.
      function foo(x,y,z) {
        // ..
      }
  foo(..) expects three arguments, because it has three declared parameters.
  This count has a special term: arity. Arity is the number of parameters in a function declaration.
  The arity of foo(..) is 3.
</pre>
