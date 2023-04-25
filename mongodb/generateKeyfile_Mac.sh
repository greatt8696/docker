sudo openssl rand -base64 756 > ~/mongodb.key
sudo cp ~/mongodb.key ./mongodb.key
sudo chmod 600 ./mongodb.key
sudo chown root:999 ./mongodb.key
