#!/bin/bash

sudo rm /var/log/traefik.log
sudo rm /var/log/traefikaccess.log
sudo touch /var/log/traefik.log
sudo touch /var/log/traefikaccess.log
sudo chmod 644 /var/log/traefik.log
sudo chmod 644 /var/log/traefikaccess.log
