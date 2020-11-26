#!/bin/bash

if [ -z $1 ] || [ -z $2 ] 
then
	echo "Você não informou os parametros corretamente"
        echo "Metodo de uso: ./multipleScanner.sh listadominios.txt resultadoScanner.txt"
	echo "Primeiro termo se refere a lista a ser usada e o segundo termo se refere ao nome da lista que vai conter os reusltados do scanner."
        exit
fi
echo "Multiple Scanner"
echo "Made by Lorentz"
output_textFile=$2
    
  
getIp (){
	echo "Host[=>]"$host >> $output_textFile
       	ping -c1 -4 $host | sed -n '2p' | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >>$output_textFile
}
  
portScan(){
	echo "Portas Status Serviço" >>$output_textFile
       	nmap -sS --host-timeout 1m $host | grep -Eo '[0-9]{1,5}\/[A-Za-z]*\ +[A-Za-z]*\ +([A-Za-z]|[0-9])*' >>$output_textFile
 }
contadorSites=0
for host in $(cat $1);do
	((contadorSites=contadorSites+1)) #Adicionando +1 a cada site scaneado	
	echo "Scanneando "$host "[...]"
	getIp
	portScan
done
  echo "Foram scaneados $contadorSites sites"
  echo "O scanner salvou os resultados em "$output_textFile
