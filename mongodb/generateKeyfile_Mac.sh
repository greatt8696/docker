mkdir ./docker
mkdir ./docker/mongodb
mkdir ./docker/mongodb/etc
openssl rand -base64 756 > ./docker/mongodb/etc/mongodb.key
sudo chmod 400 ./docker/mongodb/etc/mongodb.key
sudo chown 999:999 ./docker/mongodb/etc/mongodb.key
