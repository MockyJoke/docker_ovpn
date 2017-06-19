#!/bin/bash

DOMAIN=$1
EMAIL=$2

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y certbot
sudo certbot certonly -n --email $EMAIL --domains "$DOMAIN" --agree-tos --standalone --text

echo Copying server certificate to config directory...
sudo cp -L /etc/letsencrypt/live/$DOMAIN/fullchain.pem conf/pki/serverCert.pem
sudo cp -L /etc/letsencrypt/live/$DOMAIN/privkey.pem conf/pki/serverKey.pem
sudo cp -L /etc/letsencrypt/live/$DOMAIN/chain.pem conf/pki/caCert.pem
openssl dhparam -dsaparam -out conf/pki/dh.pem 2048
echo Done!
