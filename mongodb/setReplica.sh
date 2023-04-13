#! /bin/bash
sudo docker exec -i gamedb1 mongosh -u local -p haru <<EOF 
rs.initiate({ _id: "gamedbreplicaset", members: [ {_id: 0, host: "host.docker.internal:27017"}, {_id: 1, host: "host.docker.internal:27018"}, {_id: 2, host: "host.docker.internal:27019"}]});
EOF



