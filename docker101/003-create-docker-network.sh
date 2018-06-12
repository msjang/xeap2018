cat $0

# Ref by
# EN https://docs.docker.com/engine/reference/commandline/network_create/
# KR http://pyrasis.com/book/DockerForTheReallyImpatient/Chapter06/02

sudo docker network create tutor-network \
    --ip-range 172.28.0.0/24 \
    --subnet=172.28.0.0/24

# docker network list

# docker network inspect tutor-network

