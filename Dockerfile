FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install openvpn easy-rsa python iptables net-tools

ENV OPENVPN /etc/openvpn
ENV OPENVPN_PKI /etc/openvpn/pki

CMD mkdir /etc/openvpn/pki

COPY conf $OPENVPN
CMD sysctl -w net.ipv4.ip_forward=1
CMD iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE
EXPOSE 1194/udp

ENTRYPOINT service openvpn start && /bin/bash

