
@REM for ansys2
@REM copy C:\\Users\\Maharjan\\AppData\\Local\\SpaceClaim\\CustomShortcuts.xml z:\\CustomShortcuts.xml^
@REM  && copy C:\\Users\\Maharjan\\.gitconfig z:\\.gitconfig^
@REM  && copy C:\\Users\\Maharjan\\AppData\\Local\\SpaceClaim\\SpaceClaim.exe_Url_mxknckiray12wbp2nbjrw2dmbpybo0of\\1.0.0.0\\user.config z:\\user.config^
@REM  && copy C:\\Users\\maharjan\\AppData\\Local\\SpaceClaim\\SpaceClaim\\barlayout2.xml z:\\barlayout2.xml^
@REM  && copy C:\\Users\\Maharjan\\AppData\\Roaming\\Microsoft\\Templates\\Normal.dotm z:\\Normal.dotm^
@REM  && npm list --global --depth=0 > z:\npm-list.txt^
@REM  && type z:\npm-list.txt^
@REM  && pip list > z:\pip-list.txt^
@REM  && type z:\pip-list.txt

copy %userprofile%\\AppData\\Local\\SpaceClaim\\CustomShortcuts.xml z:\\CustomShortcuts.xml^
 && copy %userprofile%\\.gitconfig z:\\.gitconfig^
 && copy %userprofile%\\AppData\\Local\\SpaceClaim\\SpaceClaim.exe_Url_2bhjmfn2acs4v2jepeg4m4glprvd2xad\\1.0.0.0\\user.config z:\\spaceclain_user.config^
 && copy %userprofile%\\AppData\\Local\\SpaceClaim\\SpaceClaim\\barlayout2.xml z:\\spaceclaim_barlayout2.xml^
 && copy %userprofile%\\AppData\\Roaming\\Microsoft\\Templates\\Normal.dotm z:\\Normal.dotm^
 && npm list --global --depth=0 > z:\npm-list-sm.txt^
 && type z:\npm-list-sm.txt
@REM  && pip list > z:\pip-list-sm.txt^
@REM  && type z:\pip-list-sm.txt
