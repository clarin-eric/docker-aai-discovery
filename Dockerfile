FROM docker.clarin.eu/tomcat8:1.0.0

#Remove default webapp
RUN rm -r /var/lib/tomcat8/webapps/ROOT
#Deploy discovery service and metadata-api webapps
COPY webapp/discovery /var/lib/tomcat8/webapps/discovery
COPY webapp/metadata-api /var/lib/tomcat8/webapps/metadata-api

RUN mkdir -p /data
ADD idps.json /data/idps.json

VOLUME ["/data"]
