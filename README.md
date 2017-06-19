# docker_ovpn

#### Usage:

git clone https://github.com/MockyJoke/docker_ovpn.git

cd docker_ovpn

/bin/bash request_cert.sh <DOMAIN> <EMAIL>

docker build -t ovpn .

docker run -d -t --cap-add=NET_ADMIN --privileged -v $(pwd)/conf:/etc/openvpn/ -p 1194:1194/udp ovpn
#### Attach to container:

docker exec -i -t container_id /bin/bash
