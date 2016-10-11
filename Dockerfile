FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install openvpn easy-rsa python iptables net-tools

ENV OPENVPN /etc/openvpn


RUN mkdir $OPENVPN/pki
RUN mkdir $OPENVPN/init

COPY init $OPENVPN/init
COPY conf $OPENVPN
EXPOSE 1194/udp

ENTRYPOINT /bin/sh $OPENVPN/init/start.sh && /bin/bash

