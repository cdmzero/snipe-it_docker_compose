@echo off
rem Comprobamos si se ha pasado algún parámetro, si no es así, mostramos un mensaje de error y salimos
if "%~1"=="" (
    echo "Debemos pasar alguno de los siguientes parametros al fichero : “%0” DISCO o MEMORIA”
    exit /b )
rem Comprobamos si el parámetro es DISCO o MEMORIA
if /i "%~1"=="DISCO" (
rem Si es DISCO, obtenemos información del disco y la mostramos por pantalla
    echo "Información del disco:"
    fsutil volume diskfree c:
) else if /i "%~1"=="MEMORIA" (
rem Si es MEMORIA, obtenemos información de la memoria y la mostramos por pantalla
    echo "Información de la memoria:"
    systeminfo | find "Total Physical Memory"
) else (
rem Si no es ni DISCO ni MEMORIA, mostramos un mensaje de error
    	echo "El parametro debe ser DISCO o MEMORIA”
    	exit /b 
        )
exit /b
