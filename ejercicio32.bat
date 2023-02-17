@echo off
rem Copia el archivo copiame.txt a copiado.txt
copy copiame.txt copiado.txt
rem Mueve el archivo copiado.txt al directorio raíz de C:
move copiado.txt C:\
rem Borra el archivo copiame.txt
del copiame.txt
rem Copia el archivo copiado.txt a copiado2.txt
copy C:\copiado.txt copiado2.txt
