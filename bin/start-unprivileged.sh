#!/bin/bash
set -x

EXECUTABLE=/opt/reddcoin/bin/64/reddcoind
DIR=$HOME/.reddcoin
FILENAME=reddcoin.conf
FILE=$DIR/$FILENAME

# create directory and config file if it does not exist yet
if [ ! -e "$FILE" ]; then
    mkdir -p $DIR

    echo "Creating $FILENAME"

    # Seed a random password for JSON RPC server
    cat <<EOF > $FILE
printtoconsole=${PRINTTOCONSOLE:-1}
rpcbind=127.0.0.1
rpcallowip=10.0.0.0/8
rpcallowip=172.16.0.0/12
rpcallowip=192.168.0.0/16
staking=1
gen=0
server=1
txindex=1
rpcuser=${RPCUSER:-reddcoinrpc}
rpcpassword=${RPCPASSWORD:-`dd if=/dev/urandom bs=33 count=1 2>/dev/null | base64`}

addnode=101.162.103.119:45444
addnode=108.60.53.210:45444
addnode=109.86.81.235:45444
addnode=112.141.4.128:45444
addnode=115.40.21.57:45444
addnode=116.125.229.150:45444
addnode=119.199.247.19:45444
addnode=121.217.23.240:45444
addnode=140.186.234.252:45444
addnode=172.104.30.217:45444
addnode=172.73.243.78:45444
addnode=174.67.41.189:45444
addnode=184.56.208.241:45444
addnode=185.160.217.25:45444
addnode=186.84.0.86:45444
addnode=192.99.149.107:45444
addnode=195.201.112.79:45444
addnode=203.118.174.187:45444
addnode=209.133.220.135:45444
addnode=209.239.123.108:45444
addnode=211.47.105.173:45444
addnode=212.7.24.103:45444
addnode=213.90.31.91:45444
addnode=216.152.5.140:45444
addnode=217.61.5.200:45444
addnode=217.62.81.145:45444
addnode=217.63.234.56:45444
addnode=220.76.220.78:45444
addnode=221.162.201.248:45444
addnode=24.131.254.85:45444
addnode=24.146.6.17:45444
addnode=24.247.246.252:45444
addnode=24.47.151.155:45444
addnode=37.157.148.59:45444
addnode=46.10.60.163:45444
addnode=50.67.25.64:45444
addnode=50.83.62.151:45444
addnode=58.126.95.102:45444
addnode=62.167.103.137:45444
addnode=62.175.60.128:45444
addnode=62.75.244.226:45444
addnode=66.31.162.134:45444
addnode=67.180.110.114:45444
addnode=67.232.88.41:45444
addnode=68.194.47.67:45444
addnode=71.192.109.219:45444
addnode=72.177.0.152:45444
addnode=72.24.84.117:45444
addnode=73.42.211.134:45444
addnode=73.6.13.103:45444
addnode=76.181.191.37:45444
addnode=76.88.82.209:45444
addnode=77.20.170.215:45444
addnode=77.223.74.53:45444
addnode=77.251.66.46:45444
addnode=77.58.17.221:45444
addnode=80.109.91.21:45444
addnode=81.217.129.199:45444
addnode=81.95.183.225:45444
addnode=83.77.196.15:45444
addnode=83.84.173.136:45444
addnode=86.175.33.151:45444
addnode=86.42.76.6:45444
addnode=87.98.152.236:45444
addnode=88.135.196.43:45444
addnode=90.116.63.47:45444
addnode=90.214.71.94:45444
addnode=93.185.14.69:45444
addnode=93.189.21.161:45444
addnode=94.209.255.242:45444
addnode=98.24.32.203:45444
EOF

#    xz -d /opt/bootstrap.dat.xz -d $DIR/

fi

cat $FILE
ls -lah $DIR/

echo "Initialization completed successfully"

exec $EXECUTABLE
