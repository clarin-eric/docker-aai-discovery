FROM docker.clarin.eu/tomcat8:1.0.0

#Remove default webapp
RUN rm -r /var/lib/tomcat8/webapps/ROOT
COPY webapp/discovery /var/lib/tomcat8/webapps/discovery
COPY webapp/metadata-api /var/lib/tomcat8/webapps/metadata-api

VOLUME ["/data"]
