FROM docker.clarin.eu/tomcat8:1.1.4

#Remove default webapp
RUN rm -r /var/lib/tomcat8/webapps/ROOT
#Deploy discovery service and metadata-api webapps
COPY webapp/discovery /var/lib/tomcat8/webapps/discovery
COPY webapp/metadata-api /var/lib/tomcat8/webapps/metadata-api

USER root

RUN mkdir -p /data
ADD idps.json /data/idps.json
RUN chown -R tomcat8 /data

VOLUME ["/data"]
