 #!/bin/bash

apt-get install -y -q apt-transport-https ca-certificates && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && apt-key adv -k 58118E89F3A912897C070ADBF76221572C52609D >/dev/null 

#mkdir -p /etc/apt/sources.list.d
#touch /etc/apt/sources.list.d/docker.list
# ubuntu 16.04(Xenial)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-xenial main > /etc/apt/sources.list.d/docker.list

# ubuntu 15.10(Wily)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-wily main > /etc/apt/sources.list.d/docker.list

# ubuntu 15.04(Vivid)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-vivid main > /etc/apt/sources.list.d/docker.list

# ubuntu 14.04(trusty)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list

# ubuntu 13.10(Saucy)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-saucy main > /etc/apt/sources.list.d/docker.list

# ubuntu 13.04(Raring)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-raring main > /etc/apt/sources.list.d/docker.list

# ubuntu 12.04(Precise)
#echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-precise main > /etc/apt/sources.list.d/docker.list
apt-get update -y
apt-cache policy docker-engine

#apt-get install -y -q docker-engine=1.11.2-0~trusty
#apt-mark hold docker-engine
