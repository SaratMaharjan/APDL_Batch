@echo off
set ext=out
>%3.%ext% echo ### Merged Output File ###

>>%3.%ext% echo.
>>%3.%ext% echo ### ---------------------- ###
>>%3.%ext% echo ### File: %1.%ext% ###
>>%3.%ext% echo ### ---------------------- ###
>>%3.%ext% echo.

for /f "delims=" %%a in (%1.%ext%) do (
    >>%3.%ext% echo %%a
)

>>%3.%ext% echo.
>>%3.%ext% echo ### ---------------------- ###
>>%3.%ext% echo ### File: %2.%ext% ###
>>%3.%ext% echo ### ---------------------- ###
>>%3.%ext% echo.

for /f "delims=" %%b in (%2.%ext%) do (
    >>%3.%ext% echo %%b
)
