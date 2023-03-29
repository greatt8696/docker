mkdir /home/local/docker/mongodb/etc
openssl rand -base64 756 > /home/local/docker/mongodb/etc/mongodb.key
sudo chmod 400 /home/local/docker/mongodb/etc/mongodb.key
sudo chown 999:999 /home/local/docker/mongodb/etc/mongodb.key