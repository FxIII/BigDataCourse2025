### Running Services
Vanilla nginx server in detached mode
```bash
docker run -d --name container nginx
docker logs container -f
docker exec -it container bash
# from within the container
curl localhost
```
download some static website, mount into nginx and expose the web port
```bash
sh fetch_sites.sh

docker run -v $PWD/html-website-templates/Landing\ Page\ Website\ for\ 
App/:/usr/share/nginx/htm$
```
open browser to http://localhost:8081
