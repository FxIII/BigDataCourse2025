### Basic HDFS/Hadoop Server

#### Setup The Environment

1. Run `make build` to create the custom images
1. Run `docker compose up -d` to start the HDFS + Hadoop cluster

The docker compose will create a network for the cluster. Consider running
`docker network connect docker-hadoop_default jupyter-jupyter-1`
for connecting the Jupyter service to the cluster's network.

#### HDFS Cluster Setup
The cluster contains a single `namenode` and `datanode`, the HDFS cluster address is
`hdfs://namenode:9000/`. Any system connected to the cluster network with
`hadoop v3.2.1` installed can access to this file system using commands like:

- `hdfs dfs -put <local source> <destination on hdfs>`
- `hdfs dfs -get <source on hdfs> <local source>`
- `hdfs dfs -cat <source on hdfs>`
- `hdfs dfs -rm <source on hdfs>`
- `hdfs dfs -mkdir <paths on hdfs>`

The service interface is available [here](http://localhost:9870)

#### Hadoop Cluster Setup

The cluster contains a single scheduler, worker and history manager
The service interface is available [here](http://localhost:8088)
