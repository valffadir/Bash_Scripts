#!/bin/bash
echo El siguiente script retorna el tamaño y número de vocales y consonantes de la siguiente palabra que escriba: 
read line
echo Caracteres = $line
size=`expr ${#line}`
echo Caracteres = $size
count=1
vowel=0
cons=0
while [ $count -le $size ] ; do
	ch=`expr substr $line $count 1`
	echo $ch
	if [ $ch = A -o $ch = a -o $ch = E -o $ch = e -o $ch = I -o $ch = i -o $ch = O -o $ch = o -o $ch = U -o $ch = U ] 
	then
	  let vowel=vowel+1
	else
	  let cons=cons+1
	fi
	let count=count+1
done
echo No. de Vocales = $vowel
echo No. de Consonantes = $cons

