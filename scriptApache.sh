#!/bin/bash

echo "Instalando Apache2..."
cd /home/mauroslucios/Downloads

sudo su -
apt-get update -y
apt-get upgrade -y 
apt-get install apache2 -

echo "Instalando unzip"
apt-get install unzip -y

echo "wget linux-site-dio"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando main.zip"
unzip main.zip
cd linux-site-dio-main

echo "Movendo linux-site-dio para /var/www/html"
cp -R * /var/www/html/

