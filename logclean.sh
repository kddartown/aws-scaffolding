#!/bin/bash

sudo rm ./logs/traefik.log
sudo rm ./logs/traefikaccess.log
sudo touch ./logs/traefik.log
sudo touch ./logs/traefikaccess.log
sudo chmod 644 ./logs/traefik.log
sudo chmod 644 ./logs/traefikaccess.log
