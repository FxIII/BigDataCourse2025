### Basic Redis-stack cluster

#### Redis Cluster Setup
The cluster contains 3 `master` and 3 `replica` nodes.
These are accessible directly via:
- `redis-master-1`
- `redis-master-2`
- `redis-master-2`
and
- `redis-replica-1`
- `redis-replica-2`
- `redis-replica-3`
respectively.

The names `master` and `replica` resolves to one of the relative node in a round robin fashion.

The container `cluster-setup` setup the masters and their relative replica and exites.
Check `redis/data/config/cluster_setup.sh` for more details

The docker compose will create a private network for Cluster. Consider running
`docker network connect redis_default jupyter-jupyter-1`
for connecting the Jupyter service to the Redis's network.

#### Redis Insight

The cluster includes a Redis Insight instance, available at [localhost:8001](http://localhost:8001).

To configure the database click on the `+ Add Redis Database` button and provide this connection url `redis://default@redis-master-1:6379`.

To load the sample data click the `Load sample data` button, then the `Execute` button from  the popup window.
