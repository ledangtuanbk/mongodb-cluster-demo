#!/bin/bash
echo "Waiting for MongoDB services to start..."
sleep 30

# Initialize Config Server Replica Set
echo "Configuring Config Server Replica Set..."
mongosh --host cfgsvr1 --port 27017 <<EOF

EOF

# Wait for replica sets to initialize
echo "Waiting for replica sets to initialize..."
sleep 30

# Add shards to the cluster
echo "Adding shards to the cluster..."
mongosh --host mongos --port 27017 <<EOF

EOF

echo "MongoDB sharded cluster setup completed!"