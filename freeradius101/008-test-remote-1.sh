cat $0 | grep -vE '^echo$'

cd /etc/freeradius

cp  /docker/clients_with_remote.conf  clients.conf

git diff clients.conf
echo

service freeradius restart
echo

echo "Please, type 'exit' to logout."
echo "Then, do the next step."

