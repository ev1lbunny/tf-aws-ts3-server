#!/bin/bash

apt-get update -y
apt-get upgrade -y

sudo hostnamectl set-hostname ${instance_hostname}

adduser --disabled-login teamspeak

cd /home/teamspeak

wget https://files.teamspeak-services.com/releases/server/3.13.3/teamspeak3-server_linux_amd64-3.13.3.tar.bz2
tar xvfj teamspeak3-server_linux_amd64-3.13.3.tar.bz2
cd teamspeak3-server_linux_amd64
cp * -R /home/teamspeak
cd ..
rm -r teamspeak3-server_linux_amd64
rm teamspeak3-server_linux_amd64-3.13.3.tar.bz2
touch .ts3server_license_accepted

sudo chown -R teamspeak:teamspeak *

sudo cat >/lib/systemd/system/teamspeak.service <<EOL
[Unit]
Description=Teamspeak Server Service
Wants=network.target

[Service]
WorkingDirectory=/home/teamspeak
User=teamspeak
ExecStart=/home/teamspeak/ts3server_minimal_runscript.sh
ExecStop=/home/teamspeak/ts3server_startscript.sh stop
ExecReload=/home/teamspeak/ts3server_startscript.sh restart
Restart=always
RestartSec=15

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl enable teamspeak.service
sudo systemctl restart teamspeak.service
