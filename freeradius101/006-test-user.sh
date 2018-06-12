cat $0 | grep -vE '^echo$'

cd /etc/freeradius

ls -al users
echo

cp  /docker/authorize_bob_enabled  mods-config/files/authorize

git diff mods-config/files/authorize
echo

service freeradius start
echo

echo Test with valid ID/PW
echo - Received Access-Accept
ID=bob PW=hello RAD_SERV=127.0.0.1 NAS_PORT=10 RAD_SEC=testing123
radtest $ID $PW $RAD_SERV $NAS_PORT $RAD_SEC
echo

echo Test with invalid PW
echo - Received Access-Reject
PW=Hello
radtest $ID $PW $RAD_SERV $NAS_PORT $RAD_SEC
echo

