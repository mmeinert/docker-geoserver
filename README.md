docker-geoserver-print
======================

Dockerized GeoServer with print extension.


## Features

* Forked from [oscarfonts/docker-geoserver](https://github.com/oscarfonts/docker-geoserver).
* Built on top of [Docker's official tomcat image](https://hub.docker.com/_/tomcat/).
* Taken care of [JVM Options](http://docs.geoserver.org/latest/en/user/production/container.html), to avoid PermGen space issues &c.
* Separate GEOSERVER_DATA_DIR location (on /var/local/geoserver).
* Automatic installation of [Native JAI and Image IO](http://docs.geoserver.org/latest/en/user/production/java.html#install-native-jai-and-jai-image-i-o-extensions) for better performance.
* Automatic installation of [Microsoft Core Fonts](http://www.microsoft.com/typography/fonts/web.aspx) for better labelling compatibility.
* AWS configuration files and scripts in order to deploy easily using [Elastic Beanstalk](https://aws.amazon.com/documentation/elastic-beanstalk/). See [github repo](https://github.com/oscarfonts/docker-geoserver/blob/master/aws/README.md). Thanks to @victorzinho


## Running

Get the image:

```
docker pull oscarfonts/geoserver
```

Run as a service, exposing port 8080 and using a hosted GEOSERVER_DATA_DIR:

```
docker run -d -p 8080:8080 -v /path/to/local/data_dir:/var/local/geoserver oscarfonts/geoserver --name=MyGeoServerInstance
```

Get an [empty minimal GEOSERVER_DATA_DIR structure](https://github.com/oscarfonts/docker-geoserver/tree/master/data_dir) to start with.


See the tomcat logs while running:

```
docker logs -f MyGeoServerInstance
```
