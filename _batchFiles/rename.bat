@ECHO OFF
PUSHD .
FOR /R %%d IN (.) DO (
    cd "%%d"
    IF EXIST *.tif (
       REN *.tif *.tiff
    )
)
POPD