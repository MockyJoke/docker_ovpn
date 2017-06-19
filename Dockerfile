FROM ubuntu:latest
# For raspberry pi, use
# FROM resin/rpi-raspbian

RUN apt-get update && apt-get -y install openvpn easy-rsa python iptables net-tools

ENV OPENVPN /etc/openvpn

EXPOSE 1194/udp

ENTRYPOINT /bin/bash $OPENVPN/start.sh && /bin/bash

