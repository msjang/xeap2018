cat $0

docker create \
    --name     fr101v1 \
    --hostname fr101v1 \
    --network  tutor-network \
    --ip       172.28.0.101 \
    --volume   $PWD:/docker \
    -it \
    ubuntu:16.04 bash

docker ps -a

sudo docker start fr101v1

sudo docker exec fr101v1 /bin/sh -c '/docker/inst-fr101v1.sh'

sudo docker stop fr101v1

