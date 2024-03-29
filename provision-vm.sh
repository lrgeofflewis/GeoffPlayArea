#!/bin/bash
set -e

echo Setting up Docker...

echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
apt-get update -qq
apt-get install -o Dpkg::Options::="--force-confnew" -qy lxc-docker-1.0.0 git curl

echo 'export DOCKER_OPTS="-H unix:///var/run/docker.sock -H tcp://0.0.0.0:4243"' > /etc/default/docker
echo 'export DOCKER_HOST=tcp://0.0.0.0:4243' > /home/vagrant/.bash_profile
echo 'cd /vagrant' >> /home/vagrant/.bash_profile
stop docker
start docker

echo Installing Fig...
curl -L https://github.com/orchardup/fig/releases/download/0.4.1/linux > /usr/local/bin/fig
chmod +x /usr/local/bin/fig