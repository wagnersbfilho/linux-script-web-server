#!/bin/bash

echo "INICIO"

echo "Atualizar o servidor Linux"
apt update -y
apt upgrade -y

echo "Instalar o Apache 2"
apt install apache2 -y

echo "Instalar o unzip"
apt install unzip -y

echo "Baixar a aplicação disponível no GitHub"
mkdir /Projeto/web
cd /Projeto/web
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar o arquivo"
unzip /Projeto/web/main.zip

echo "Copiar os arquivos no diretório default do Aapache"
cp -r -v /Projeto/web/linux-site-dio-main/* /var/www/html

echo "FIM"
