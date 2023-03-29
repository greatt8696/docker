#! /bin/bash
rs.initiate({ _id: "myReplicaSet", members: [ {_id: 0, host: "mongo1"}, {_id: 1, host: "mongo2"}, {_id: 2, host: "mongo3"}]});
sudo docker exec -it "/usr/bin/mongosh "


