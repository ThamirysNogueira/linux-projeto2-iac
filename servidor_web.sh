#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando o apache2..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Realizando download de arquivo..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo..."
unzip main.zip

echo "Copiando arquivos da aplicação..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizando..."
