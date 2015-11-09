#!/bin/bash
file=$1
if [ -z $1 ]
then
  echo Introduzca como parámetro el nombre de un archivo a examinar.
else
	if [ ! -f $file ]
	then
	  echo El archivo $file no existe. 
	else
	  if [ -r $file ]
	  then
	    echo Tiene permiso de lectura sobre el archivo $file
	  else
	    echo No tiene permiso de lectura sobre el archivo $file
	  fi
	  if [ -w $file ]
	  then
	    echo Tiene permiso de escritura sobre el archivo $file
	  else
	    echo No tiene permiso de escritura sobre el archivo $file
	  fi
	  if [ ! -x $file ]
	  then
	    echo El archivo $file no es ejecutable, intentando cambiando permisos para usuario y grupo...
	    sudo chmod u+x,g+x $file
	    echo Permisos finales":"
	    ls $file -la 
	  else
	    echo El archivo $file ya es ejecutable. No se realizaron cambios.
	  fi
	fi
fi
