cat $0

# Ref by
# https://docs.docker.com/engine/reference/commandline/rm/

sudo docker stop test01 test02

sudo docker ps -a

sudo docker rm test01 test02

sudo docker ps -a

