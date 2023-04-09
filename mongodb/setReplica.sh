#! /bin/bash
sudo docker exec -i gamedb1 mongosh -u local -p haru <<EOF 
rs.initiate({ _id: "gamedbreplicaset", members: [ {_id: 0, host: "gamedb1:27017"}, {_id: 1, host: "gamedb2:27017"}, {_id: 2, host: "gamedb3:27017"}]});
EOF



