#! /bin/bash
sudo docker exec -i gameDb1 mongosh -u local -p haru <<EOF 
rs.initiate({ _id: "gameDbReplicaSet", members: [ {_id: 0, host: "gameDb1"}, {_id: 1, host: "gameDb2"}, {_id: 2, host: "gameDb3"}]});
EOF



