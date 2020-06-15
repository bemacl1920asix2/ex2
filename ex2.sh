#Bernat Marcet Claramunt
#M06UF2
#!/bin/bash
clear
if (( EUID != 0 ))
then
	echo "Executarem el script en mode root"
	exit 1
fi
	echo "Menu amb dues opcions: "
	echo "a) Esborra un usuari i el seu directori personal: "
	echo -n "Escolleix una opcio: "
	read opc
	
case $opc in

    a) echo "Escolleix un nom d'un usuari del sistema: "
       read usuari
       sudo userdel -r $usuari;;
       
    b) echo "Escolleix el nom d'un grup del sistema: "
       read grup
       sudo groupdel $grup;;
esac

exit 10
