# docker_ovpn

#### Usage:

docker build -t myopenvpn /path/to/Dockerfile

<<<<<<< HEAD
docker run -itd --cap-add=NET_ADMIN --privileged -p 1194:1194/udp myopenvpn
=======
docker run -d -t --cap-add=NET_ADMIN --privileged -p 1194:1194/udp myopenvpn /bin/bash
>>>>>>> a9e6ab984ae74ad090dc650006ccd5439843f766


#### Attach to container:

docker exec -i -t container_id /bin/bash
