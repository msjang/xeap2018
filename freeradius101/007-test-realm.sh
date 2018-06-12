cat $0 | grep -vE '^echo$'

cd /etc/freeradius

cp  /docker/proxy_realm_enabled.conf  proxy.conf

git diff proxy.conf
echo

service freeradius restart
echo

echo Test with ID and REALM
ID=bob REALM=kisti.re.kr PW=hello RAD_SERV=127.0.0.1 NAS_PORT=10 RAD_SEC=testing123
radtest $ID@$REALM $PW $RAD_SERV $NAS_PORT $RAD_SEC
echo
