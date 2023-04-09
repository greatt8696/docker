#! /bin/bash
sudo docker exec -i gamedb1 mongosh -u local -p haru <<EOF 
rs.initiate({ _id: "gamedbReplicaset", members: [ {_id: 0, host: "gamedb1"}, {_id: 1, host: "gamedb2"}, {_id: 2, host: "gamedb3"}]});
EOF



