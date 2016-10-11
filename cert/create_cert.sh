#!/bin/bash
sudo apt install -y easy-rsa

mkdir server
sudo chmod 0777 server
cd server
openssl dhparam -out dh2048.pem 2048
openssl genrsa -out server.key 4096
openssl req -new -out server.csr -key server.key -config ../openssl.cnf -batch
openssl x509 -req -in server.csr -CA ../ca/ca.crt -CAkey ../ca/ca.key -CAcreateserial -out server.crt -days 3650 -extensions x509_ext -extfile ../openssl.cnf
cp ../ca/ca.crt .
cp * ../../conf/pki/
rm ../../conf/pki/*.placeholder
cd ..
rm server -r
