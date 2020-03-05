@echo off
setlocal EnableDelayedExpansion
set ans_consec=yes
set ansys_lock=on
del *.lock

set appPath="C:\Program Files\ANSYS Inc\v195\ANSYS\bin\winx64\ansys2019R3.exe"
set numpro=4
set ansj=mech_2
set location=x:\ins\337419
set sourceFile=s.in
set wDir=S:\337419\ansys

for /l %%b in (1 1 1) do (

  echo ###########################################
  echo ###########################################
  echo calculation for CS: %%b
  echo ###########################################
  echo ###########################################

  REM for /l %%c in (0 1 0) do (
  for /l %%c in (1 1 1) do (

  echo +++++++++++++++++++++++++++
  echo calculation for +/- eigen form, controlled by %%c
  echo +++++++++++++++++++++++++++

    REM for /l %%d in (0 1 0) do (
    for /l %%d in (1 1 1) do (


      set job=1%%c%%d9
      set lk=0%%b
      set nPrefix=f
      set redirect=0
      set extVar=0

      echo !appPath! -np !numPro! -b -p !ansj! -dis -mpi INTELMPI -jobstg !job! -jobt !lk! -verz !location! -redirect !redirect! -i !location!\!sourceFile! -o !wDir!\!nPrefix!!job!-!lk!.out -dir !wDir! -j !nPrefix!!job!-!lk! -extVar !extVar! -nPrefix !nPrefix!
      !appPath! -np !numPro! -b -p !ansj! -dis -mpi INTELMPI -jobstg !job! -jobt !lk! -verz !location! -redirect !redirect! -i !location!\!sourceFile! -o !wDir!\!nPrefix!!job!-!lk!.out -dir !wDir! -j !nPrefix!!job!-!lk! -extVar !extVar! -nPrefix !nPrefix!

    )
  )
)

del !wDir!\*.lock
del !wDir!\*.ema
del !wDir!\*.esa
del !wDir!\*.osa
del !wDir!\*.pcs
del !wDir!\*.mnt
del !wDir!\*.sta
del !wDir!\*.tri
del !wDir!\*.r00
del !wDir!\*.rdb
del !wDir!\*.ldh
del !wDir!\*.full
del !wDir!\*.DO3
del !wDir!\*.dbb
del !wDir!\*.BCS
del !wDir!\*.PVTS
del !wDir!\*.mode
del !wDir!\*.abt
del !wDir!\*.gst
