#!/bin/bash


echo "Setup Docker : begin"


# locale
echo "Fixing locale..."
LOCALE_VALUE="en_AU.UTF-8"
locale-gen ${LOCALE_VALUE}
source /etc/default/locale
update-locale ${LOCALE_VALUE}


echo "Installing dependencies..."
apt install -y \
    apt-transport-https \
    ca-certificates \
    software-properties-common


echo "Installing Docker..."
curl -fsSL download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update &&
apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose
echo '{' >> /etc/docker/daemon.json  # hack to fix LXC/Docker filesystem clash
echo '   "storage-driver": "vfs"' >> /etc/docker/daemon.json  # hack to fix LXC/Docker filesystem clash
echo '}' >> /etc/docker/daemon.json  # hack to fix LXC/Docker filesystem clash
systemctl enable docker


echo "Setup Docker : complete"
