@echo off
rem Añade la cadena  ¡Hola y sobreescribe el fichero helloworld.txt
echo  "¡Hola " -n > helloworld.txt
rem Añade la cadena mundo! sin sobrescribir el fichero helloworld.txt
echo "mundo!" >> helloworld.txt