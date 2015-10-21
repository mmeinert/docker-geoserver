docker run -v $PWD/data_dir:/opt/h2-data -d -p 1521:1521 -p 81:81 --name=h2 oscarfonts/h2:geodb
docker run -v $PWD/data_dir:/var/local/geoserver -d -p 8080:8080 --link h2 --name=geoserver-h2 geoserver-h2
docker logs -f geoserver-h2 2>&1
#xdg-open http://localhost:8080/geoserver/web/
