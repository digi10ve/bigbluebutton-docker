#!/bin/sh
set -e


host=${HOSTNAME:-$(hostname -f)}

# shut down again
mongod --pidfilepath /tmp/docker-entrypoint-temp-mongod.pid --shutdown
# restart again binding to 10.7.7.1 to allow a replset with 10.7.7.6
mongod --oplogSize 8 --replSet rs0 --noauth \
   --config /tmp/docker-entrypoint-temp-config.json \
   --bind_ip_all\
   --tlsMode disabled \
   --logpath /proc/1/fd/1 --logappend \
   --pidfilepath /tmp/docker-entrypoint-temp-mongod.pid --fork

# init replset with defaults
mongo mongodb --eval "rs.initiate({
   _id: 'rs0',
   members: [ { _id: 0, host: 'mongodb:27017' } ]
})"

echo "Waiting to become a master"
echo 'while (!db.isMaster().ismaster) { sleep(100); }' | mongo

echo "I'm the master!"
