mkdir key
openssl rand -base64 756 > ./key/mongodb.key
sudo chmod 400 ./key/mongodb.key