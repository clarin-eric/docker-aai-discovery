#!/bin/sh

ARCHIVE_WEBAPP="https://b2drop.eudat.eu/public.php?service=files&t=2b727a0c081792d4a7fdb1067991d988&download"
#NAME="component-registry-rest-2.0-beta4"

echo "Downloading external resources"

echo "\tAAI Discovery release" && \
cd webapp && \
curl -s -S -J -O "$ARCHIVE_WEBAPP" && \
tar -xf *.tar.gz && \
mkdir -p discovery && \
mkdir -p metadata-api && \
cd discovery && unzip ../discovery-service-*.war &> /dev/null && cd .. && \
cd metadata-api && unzip ../metadata-api-1.8.2.1.war &> /dev/null && cd ..
