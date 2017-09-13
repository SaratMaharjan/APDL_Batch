# Linux Commands

## ls (show files and folders)

* -l  detailed list
* -a  show hidden files
* -r  reverses sorting order
* -S  sort by size
* -t  sort by modification time
* ls -l name? (one character wild card)
* ls -l name* (zero or more wild card)

## file file-name (show file type)

## tail fileName (show last 10 lines of file)

* -n  specify number of lines
* -f  stay and watch file

## head fileName (show first 10 lines of file)

## cp (copy)

* -i  interactive
* -r  recursive
* usage: cp -ir sourcedir targetdir

## mv (move)

* -i  interactive

## rm (delete file and folders)

* -i  interactive
* -r  recursive

## mkdir

## rmdir

## chown (change owner of file or folder)

* -R  recursive
* usage: chown -R root:root myDir

## chmod (change file or folder permission)

* usage: chmod 754 fileName
* 755: 7 for owner, 5 for group, 4 for others
* read: 4, write: 2, execute (open): 1, Hence, 7 means read+write+execute
* chmod u/g/o/a+x fileName (change permission for user user, group, others or all, +x and a+x are equivalent)

## locate filename (find files)

* updatedb   updates db used by locate command

## date (show date)

## tar (archive)

* -c  create
* -z  compress with gzip
* -j  compress with bzip2
* -v  verbose
* -f  write output file
* -x  unpack archive
* usage: tar -czvf myfiles.tar.gz myfiles

## cat (show file contents)

## less (show file with page nav)

## grep (search string)

* -R  recursive
* -i  ignore case
* -l  display file name instead of text lines
* usage: grep -Ril pattern path

## passwd (change user password)

## du (show disk usage)

* -h  human readable form
* -s  summarize total size
* usage: du -hs file/folder

## reboot (restart immediately)

## halt (close applications and shut down)

## cat --help (show help)

## Other commands

* pwd
* whoami
* getconf ARG_MAX

## ps -W (show current proceses)

## pkill processName (kill process)

## df -h (show disk free space in human readable format)
