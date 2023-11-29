#!/bin/bash


echo "Setup Uptime Kuma : begin"


# locale
echo "Fixing locale..."
LOCALE_VALUE="en_AU.UTF-8"
locale-gen ${LOCALE_VALUE}
source /etc/default/locale
update-locale ${LOCALE_VALUE}


echo "Creating folders..."
mkdir -p /home/monitoradmin/uptime_kuma


echo "Creating stack..."
mv /docker-compose.yaml /home/monitoradmin/docker-compose.yaml
cd /home/monitoradmin
docker-compose pull
echo "Starting stack..."
docker-compose up --detach


echo "You can access the console at http://$(hostname -I):3001/"
echo "Setup Uptime Kuma : complete"
