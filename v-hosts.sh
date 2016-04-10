#!/bin/sh

addHost () {
        echo "hello"
}

addVirtualHost () {
        echo "je suis un test $1"
}







echo "***********************************************"
echo "********** Ajout d'un nouvel hôte *************"
echo "***********************************************"
read -p "Entrez l'adresse à rediriger [127.0.0.1]: " adresse
if [ -z $adresse ]
then
        adresse='127.0.0.1'
fi
read -p "Entrez un hôte (ex: example.com): " hote
while [ -z $hote ]
do
	read -p "Veuillez entrer une valeur pour l'hôte: " hote
done

echo "***********************************************"
echo "************* Ajout du virtualhost ************"
echo "***********************************************"

read -p "[DocumentRoot] (ex: /var/www/projet) => " path
while [ -z $path ]
do
	read -p "[DocumentRoot] => " path
done

read -p "[ServerName] (ex: example.com) => " serverName
while [ -z $serverName ]
do
	read -p "[ServerName] => " serverName
done

read -p "[ServerAlias] (ex: www.example.com) => " serverAlias
while [ -z $serverName ]
do
        read -p "[ServerAlias] => " serverAlias
done

read -p "[ServerAdmin] (ex: admin@example.com) => " serverAdmin
while [ -z $serverName ]
do
        read -p "[ServerAdmin] => " serverAdmin
done

echo "***********************************************"
echo "**************** Confirmation *****************"
echo "***********************************************"
echo "***************                               	*"
echo "**** Hosts ****                               	*"
echo "***************                               	*"
echo "*   $adresse    $hote				*"
echo "***************                               	*"
echo "* VirtualHost *                               	*"
echo "***************                               	*"
echo "*   path:         $path				*"
echo "*   ServerName:   $serverName			*"
echo "*   ServerAlias:  $serverAlias			*"
echo "*   ServerAdmin:  $serverAdmin			*"
echo "*                                          	*"
echo "***********************************************"
read -p "Confirmer les informations [y/n]" confirm
if [ confirm=="y" ]
then
	echo "information validées"
fi 
