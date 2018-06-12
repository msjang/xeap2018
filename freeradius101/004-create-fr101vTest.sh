cat $0

docker create \
    --name     fr101vTest \
    --hostname fr101vTest \
    --network  tutor-network \
    --ip       172.28.0.102 \
    --volume   $PWD:/docker \
    -it \
    fr101:v1

docker ps -a

