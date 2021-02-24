
:addZero
set par1=%par%

if %num% geq 4 (
  if %par% leq 999 (
    set "par1=0%par%"
  )

  if %par% leq 99 (
    set "par1=00%par%"
  )

  if %par% leq 9 (
    set "par1=000%par%"
  )
)

if %num% equ 3 (
  if %par% leq 99 (
    set "par1=0%par%"
  )

  if %par% leq 9 (
    set "par1=00%par%"
  )
)

if %num% equ 2 (
  if %par% leq 9 (
    set "par1=0%par%"
  )
)

set par=%par1%
@REM echo %par%
