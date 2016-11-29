#! /bin/bash

# List the installed Docker packages!
yum list installed | grep docker

systemctl stop docker.service

# remove installed Docker packages !
yum erase -y docker*

# delete all images, containers, and volumes.
rm -rf /var/lib/docker


