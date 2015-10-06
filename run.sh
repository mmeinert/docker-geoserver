docker run -v $PWD/data_dir:/var/local/geoserver -d -p 8080:8080 --name=geoserver-h2 geoserver-h2
docker logs -f geoserver-h2 2>&1
#xdg-open http://localhost:8080/geoserver/web/
