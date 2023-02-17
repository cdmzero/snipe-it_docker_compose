@echo off
setlocal enabledelayedexpansion

rem Comprobamos si se ha pasado algún parámetro, si no es así, mostramos un mensaje de error y salimos
if "%~1"=="" (
 rem Mensaje de error
    echo "Necesitas facilitar un directorio como parametro, ejemplo: %0 nombre_de_directorio."
    exit /b
)
:eliminar
rem Comprobamos si se ha terminado de procesar todos los parámetros, en cuyo caso salimos
if "%~1"=="" (
   rem Mensaje de finalización
   	 echo "Terminado."
    	exit /b
)
set "dir=%~1"
rem Comprobamos si el directorio existe, si no existe mostramos un mensaje de error
if not exist "%dir%" (
 rem Mensaje de error
    	echo "El directorio "%dir%" no existe.”
) else (
rem Si el directorio existe, lo eliminamos
    		rd /s /q "%dir%"
    		echo "Directorio "%dir%" eliminado.”
)
shift
rem Pasamos al siguiente parámetro
goto eliminar
