#!/bin/bash

# CentOS 6 & RHEL 6 : https://yum.dockerproject.org/repo/main/centos/6
# CentOS 7 & REEL 7 : https://yum.dockerproject.org/repo/main/centos/7

# Fedora 20 : https://yum.dockerproject.org/repo/main/fedora/20
# Fedora 21 : https://yum.dockerproject.org/repo/main/fedora/21
# Fedora 22 : https://yum.dockerproject.org/repo/main/fedora/22

cat > /etc/yum.repos.d/docker.repo << '__EOF__'

[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg

__EOF__

mkdir -p /etc/systemd/system/docker.service.d

cat > /etc/systemd/system/docker.service.d/override.conf << '__EOF__'

[Service]
ExecStart=
ExecStart=/usr/bin/docker daemon --storage-driver=overlay -H fd://

__EOF__

yum install -y docker-engine-1.11.2

yum install -y yum-versionlock

yum versionlock docker-engine

yum clean all
