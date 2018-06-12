cat $0

# Ref by
# https://docs.docker.com/engine/reference/commandline/create/

# Notice
# Use absolute path in 'volume' option

docker create \
    --name     test01 \
    --hostname test01 \
    --network  tutor-network \
    --ip       172.28.0.200 \
    --volume   $PWD:/docker \
    -it \
    ubuntu:16.04 bash

docker ps -a

# docker inspect test01

