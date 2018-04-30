#!/bin/bash

apt-get update

apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

echo "deb [arch=armhf] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list

apt-get update

apt-get install docker-ce

docker run -d -e 'MYSQL_ROOT_PASSWORD=q1w2e3r4t5y6' -e 'MYSQL_DATABASE=firefly_iii' -e 'MYSQL_USER=firefly_iii' -e 'MYSQL_PASSWORD=firefly_iii' -p '3306:3306' --name mysql po1yak/mysql_arm

docker volume create firefly_iii_export
docker volume create firefly_iii_upload

docker run -d -v firefly_iii_export:/var/www/firefly-iii/storage/export -v firefly_iii_upload:/var/www/firefly-iii/storage/upload -p 80:80 -e FF_APP_ENV=local -e FF_APP_KEY=S0m3R@nd0mString0f32Ch@rsEx@ct1y -e FF_DB_HOST=192.168.0.88 -e FF_DB_NAME=firefly_iii -e FF_DB_USER=firefly_iii -e FF_DB_PASSWORD=firefly_iii --name firefly-iii po1yak/firefly-iii_arm

docker exec -it firefly-iii php artisan migrate --seed
docker exec -it firefly-iii php artisan firefly:upgrade-database
docker exec -it firefly-iii php artisan firefly:verify
docker exec -it firefly-iii php artisan passport:install
