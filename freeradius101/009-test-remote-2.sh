cat $0 | grep -vE '^echo$'

sudo apt-get -y install freeradius-utils
echo

echo Test with remote Radius Server
ID=bob REALM=kisti.re.kr PW=hello RAD_SERV=172.28.0.102 NAS_PORT=10 RAD_SEC=testing123
radtest $ID@$REALM $PW $RAD_SERV $NAS_PORT $RAD_SEC
echo

