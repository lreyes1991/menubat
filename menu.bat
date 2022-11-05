@echo off
:menu
color 0c
cls
echo Seleccione una opcion.501-20, LUIS REYES
echo.Guatemala 2/6/2014
echo.
echo  1.formatear
echo  2.recuperar archivos
echo  3.Reparar disco
echo  4.Convertir de FAT32 a NTFS
echo  5.desfragmentar disco
echo  6.lista de procesos
echo  7.informacion de sistema
echo  8.Terminar proceso
echo  9.Ver aplicaciones conectadas a Internet
echo  10.Salir

set/p var=
if %var%==1 goto primero
if %var%==2 goto segundo
if %var%==3 goto tercero
if %var%==4 goto cuarto
if %var%==5 goto quinto
if %var%==6 goto sexto
if %var%==7 goto septimo
if %var%==8 goto octavo
if %var%==9 goto noveno
if %var%==10 exit
if %var%==gt10 echo error
goto :menu

:primero
cls
color 1a
title=Formateador
set/p unidad=ingresa letra de unidad.
cd\
format/q %unidad%:
echo Formato terminado.
pause

goto :menu

:segundo
cls
color 0a
title=Recuperacion
set/p unidad=ingresa letra de unidad.
cd\
echo Recuperacion en curso, espere...
attrib /s /d -r -a -s -h  %unidad%:\*.*
echo Recuperaci¢n terminada exitosamente.
pause
goto :menu

:tercero
cls
color 06
title=Reparacion
set/p unidad=ingresa letra de unidad.
cd\
chkdsk/r  %unidad%:
echo Recuperaci¢n terminada exitosamente.
pause
goto :menu

:cuarto
cls
color 1a
title=Conversion
set/p unidad=ingresa letra de unidad.
cd\
convert %unidad%: /fs:ntfs
echo Conversion terminada exitosamente.
pause
goto :menu

:quinto
cls
color 1a
title=Desfragmentar
set/p unidad=ingresa letra de unidad.
cd\
defrag %unidad%: -f -v
echo Desfragmentacion terminada exitosamente.
pause
goto :menu

:sexto
cls
color 1a
title=Tareas en ejecucion
tasklist
pause
goto :menu

:septimo
cls
color 1a
title=Informacion de sistema
Systeminfo
pause
goto :menu

:octavo
cls
color 1a
title=Terminar proceso
set/p proceso=ingresa proceso.
cd\
taskkill /f /im %proceso%.exe
echo Listo.
pause
goto :menu

:noveno
cls
color 1a
title=Aplicaciones conectadas
netstat -bn
echo Listo.
pause
goto :menu