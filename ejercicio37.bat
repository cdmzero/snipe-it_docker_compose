@echo off
rem Comprobamos que se ha proporcionado un nombre de directorio como parámetro
if "%~1"=="" (
  echo "Necesitas facilitar un directorio como parametro, ejemplo: “%0“ nombre_de_directorio.”
  exit /b
 )
rem Asignamos el nombre de directorio a la variable "dir"
set "dir=%~1"
rem Comprobamos si el directorio ya existe
if exist "%dir%" (
 	 echo "El directorio "%dir%" ya existe.”
 	 exit /b  )
rem Creamos el directorio
md "%dir%"
echo "Directorio "%dir%" creado .“
