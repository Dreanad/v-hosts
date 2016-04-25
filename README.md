## V-HOSTS
# Requirements
  - Apache 2.4~
  - Système GNU/Linux
  - sed command
  - sudo
# Introduction
V-hosts est un petit script qui faciliteras la mis en place de vos hosts ainsi que vhosts
# Description
V-hosts vous permet de créer un hosts qui seras associé à un virtualhost (apache2)
# Installation
- Télécharger l'archive du projet sur votre machine et décompresser le.

- Entré dans le répertoire v-hosts
````
cd v-hosts
 ````
- Lancez l'installation
````
sudo ./install.sh
````
V-Hosts est maintenant installé :)

# Configuration
Edit ````/etc/v-hosts/v-hosts.conf```` to configure your v-hosts
The default config file:
````
HOST_ADRESSE="127.0.0.1"
PATH_DEFAULT="/var/www"
````

# Utilisation
Il suffit de lancer la commande et de suivre les instructions:
````
sudo v-hosts
````
