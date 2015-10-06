FROM oscarfonts/geoserver:2.8.0

MAINTAINER Oscar Fonts <oscar.fonts@geomati.co>

ENV GEOSERVER_VERSION 2.8.0

WORKDIR /usr/local/tomcat/webapps/geoserver/WEB-INF/lib

# H2 plugin
RUN wget http://sourceforge.net/projects/geoserver/files/GeoServer/${GEOSERVER_VERSION}/extensions/geoserver-${GEOSERVER_VERSION}-h2-plugin.zip \
	&& unzip -o geoserver-${GEOSERVER_VERSION}-h2-plugin.zip \
	&& rm geoserver-${GEOSERVER_VERSION}-h2-plugin.zip *.txt
