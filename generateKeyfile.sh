mkdir key
openssl rand -base64 756 > ./etc/mongodb.key
sudo chmod 400 ./etc/mongodb.key