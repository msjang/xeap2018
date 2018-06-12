cat $0

# Use local apt cache server
# ref by 
# http://xmodulo.com/apt-caching-server-ubuntu-debian.html
echo Acquire::http::Proxy \"http://172.28.0.1:3142\"\; > /etc/apt/apt.conf.d/00aptproxy;

apt -y update
apt install net-tools

echo "ifconfig installed: $(which ifconfig)"
ifconfig eth0

echo "helloworld in test container" > /changes.txt

cat /changes.txt

echo "Two changes on test01 container; ifconfig installed, /changes.txt created."

