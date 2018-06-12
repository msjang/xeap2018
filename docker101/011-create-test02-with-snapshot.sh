cat $0

docker create \
    --name     test02 \
    --hostname test02 \
    --network  tutor-network \
    --ip       172.28.0.201 \
    --volume   $PWD:/docker \
    -it \
    docker101:test01

docker ps -a

