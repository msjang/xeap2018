cat $0

# Ref by
# https://docs.docker.com/engine/reference/commandline/exec/

echo "Check changes are preserved after stop the container."

sudo docker start test02

echo "test02# /sbin/ifconfig eth0"
sudo docker exec test02 /sbin/ifconfig eth0

echo "test02# cat /changes.txt"
sudo docker exec test02 cat /changes.txt

sudo docker stop test02



