@echo off
setlocal
rem Abrimos el editor de texto para que el usuario introduzca las palabras
notepad lista.txt
rem Ordenamos las palabras alfabéticamente y las mostramos por pantalla
type lista.txt | sort
endlocal
