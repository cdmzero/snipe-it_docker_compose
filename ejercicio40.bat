@echo off
rem Comprobamos si el archivo lista.txt existe
    if not exist lista.txt (
        echo "El archivo lista.txt no existe."
        exit /b 
    )
rem Comprobamos si se ha pasado un parámetro
    if "%~1"=="" (
    echo "Debe proporcionar una palabra como parametro".
    exit /b
    )

rem Buscamos la palabra en el archivo
find /i "%~1" lista.txt > nul
    if %errorlevel% equ 0 (
        echo "La palabra "%~1" se encuentra en el archivo lista.txt."
    ) else (
    echo "La palabra "%~1" no se encuentra en el archivo lista.txt."
        )
