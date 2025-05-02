#echo "yes" | redis-cli --cluster create stack:6379 redis-master-1:6379 redis-master-2:6379 --cluster-replicas 0
echo "yes" | redis-cli --cluster create redis-master-1:6379 redis-master-2:6379 redis-master-3:6379 --cluster-replicas 0


redis-cli --cluster add-node redis-replica-1:6379 redis-master-1:6379 --cluster-slave
redis-cli --cluster add-node redis-replica-2:6379 redis-master-2:6379 --cluster-slave
redis-cli --cluster add-node redis-replica-3:6379 redis-master-3:6379 --cluster-slave 
