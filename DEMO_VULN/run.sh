#!/bin/bash 
git clone https://github.com/Hritikpatel/InsecureTrust_Bank
docker pull tomsik68/xampp
docker compose up -d 

# visit localhost/phpmyadmin
# run data.sql inside the console or import data.sql via upload file
# adjust ITB to itb in login.process.php
#
# add docker container to /etc/host for custom domain
