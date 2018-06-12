hostname

cat $0

# Use local apt cache server
echo Acquire::http::Proxy \"http://172.28.0.1:3142\"\; > /etc/apt/apt.conf.d/00aptproxy;

apt -y update;
apt -y install software-properties-common;
add-apt-repository -y ppa:freeradius/stable-3.0;
apt -y update;

apt -y install net-tools iputils-ping vim tree git ansible;
apt -y install freeradius freeradius-utils;

cp -arp /etc/freeradius /etc/freeradius_bak;
chmod -R -w /etc/freeradius_bak;

cd /etc/freeradius;
git init;
git config user.name tutorial;
git config user.email tutorial@xeap2018;
git add *;
git commit --amend -F- <<EOF
freeradius default configs

$(freeradius -v | head -n 1 | cut -c-64)
EOF

git log -n 1;

