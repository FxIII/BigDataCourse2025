### Docker compose
Running Jupyter server would require:
```bash
docker run -it --rm \
  -p 8888:8888 \
  -v $PWD/data/work:/home/jovyan/work \
  -v $PWD/data/config:/home/jovyan/.jupyter/ \
  -e GRANT_SUDO='yes' \
  -e JUPYTER_ENABLE_LAB='yes' \
  -e PYTHONPATH='/home/jovyan/work/lib' \
  -e JAVA_HOME='/usr/lib/jvm/java-17-openjdk-arm64' \
  quay.io/jupyter/all-spark-notebook
```
We mount working direction and configuration directory so they will survive the container.  
Some control environment variable are injected and the port `8888` is forwarded

There is a more convenient way to describe such services using docker compose:
[docker-compose.yml](./docker-compose.yml)

By executing this command:
```bash
docker compose up -d
```
docker will read the compose file and setup all available services, these service will also
be connected into a custom network so they can communicate to each other by service name
