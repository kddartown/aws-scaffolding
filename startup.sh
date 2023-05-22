#!/bin/bash

echo "Initialising Startup script"
sudo yum update
sudo systemctl start docker
cd /var
bash dns.sh
cd /srv/docker-compose
docker-compose up -d
