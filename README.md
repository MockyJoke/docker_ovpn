# docker_ovpn

#### Usage:

docker build -t myopenvpn /path/to/Dockerfile

docker run -d --cap-add=NET_ADMIN --privileged -p 1194:1194/udp myopenvpn


#### Attach to container:

docker exec -i -t container_id /bin/bash
