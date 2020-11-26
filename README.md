# multipleScanner

Português/Brasil

Scanner desenvolvido para scanear listas com multiplos domínios e sub-domínios.
funcionamento: O scanner usa o ping para pegar o ip dos domínios informados pela primeira lista(primeiro parâmetro)e utiliza o nmap para verificar as portas e os protocolos que estao rodando nesses domínios, então guarda esses resultados dentro da segunda lista(segundo parâmetro) 

Requisitos/requirements
nmap
sudo apt-get install nmap

metodo de uso:
chmod +x multipleScanner.sh
sudo su 
./multipleScanner list1.txt list2.txt
list1(lista com os dominios)
list2(lista que vai armazenar os resultados)

English

this scanner is designed to handle multiple domains and subdomains.
The scanner takes the domains from the first list (first parameter) and uses the ping command to capture the ip and uses nmap to analyze which ports are open and what services are running on the domain, then stores this result in the second list (second parameter)

method of use:
chmod + x multipleScanner.sh
sudo su
./multipleScanner example1.txt example2.txt
example1(the list containing the domains)
example2(the list that saves the results)

