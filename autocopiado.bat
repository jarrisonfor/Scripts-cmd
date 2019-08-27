@echo off
net use P: \\Profe-pc\compartir
xcopy P:\\* D:\"Google Drive"\Compartir /Y /S /D /EXCLUDE:C:\Users\alumno\Documents\lista.txt