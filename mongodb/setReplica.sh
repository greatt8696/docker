#! /bin/bash
sudo docker exec -i gamedb1 mongosh -u local -p haru <<EOF 
rs.initiate({ _id: "gamedbreplicaset", members: [ {_id: 0, host: "localhost:27017"}, {_id: 1, host: "localhost:27018"}, {_id: 2, host: "localhost:27019"}]});
EOF



