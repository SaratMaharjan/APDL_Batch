
:delFiles
echo.
echo Deleting Temporary Files ..

del !wDir!\!nPrefix!!job!-!lk!.bcs >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dbb >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.do3 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dsp >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dspmatk >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dspstack >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dspsymb >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dsptri >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.dsptriu >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.ema >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.emat >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.esa >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.esav >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.ful >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.full >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.ldh >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.ldhi >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.lock >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.mnt >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.mntr >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.mod >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.mode >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.osa >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.osav >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.pcs >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.pvt >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r00 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r001 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r002 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r003 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r004 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r005 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r006 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r007 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r008 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.r009 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr001 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr002 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr003 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr004 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr005 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr006 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr007 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr008 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.nr009 >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.rdb >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.sta >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.stat >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.tri >nul 2>&1
del !wDir!\!nPrefix!!job!-!lk!.tri >nul 2>&1

for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.out >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.rst >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.err >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.esav >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.emat >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.full >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.stat >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r001 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r002 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r003 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r004 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r005 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r006 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r007 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r008 >nul 2>&1
for /l %%i in (0,1,%numPro%) do del !wDir!\!nPrefix!!job!-!lk!_%%i.r009 >nul 2>&1

echo .............................
echo ....... File Deletion Completed
echo.

goto :eof
