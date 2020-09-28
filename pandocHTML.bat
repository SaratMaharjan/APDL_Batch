 cd "C:\Users\Asus\Dropbox\anakon\rechnungen\rechnungen\_site"
 C:
 for /R %%f in (*.html) do (
   pandoc -t html5 --css ./css/main.css %%f -o %%~dpa.pdf -s --pdf-engine=wkhtmltopdf
 )
Z:
