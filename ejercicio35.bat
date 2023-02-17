@echo off

if not exist %~1 (
   	 echo "El archivo " %~1 " no se ha encontrado".
) else (
   	 type %~1
)
