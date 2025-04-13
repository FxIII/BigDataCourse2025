### Basic MinIO Server

#### Setup The Environment

1. Run `docker compose up -d` to start the MinIO Server.

The buckets and the relative data will be stored as a volume under the folder `./data/minio`.

The docker compose will create a private network for MinIO. Consider running
`docker network connect minio_default jupyter-jupyter-1`
for connecting the Jupyter service to the MinIO's network.

#### MinIO Setup
This MinIO runs on a single instance accessible through `http://minio:9000` URL.
The service interface is available [here](http://localhost:9101).
