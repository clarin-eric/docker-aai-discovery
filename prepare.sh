#!/bin/sh

ARCHIVE_WEBAPP="https://b2drop.eudat.eu/public.php?service=files&t=06fc19000c65b86ddec7761eb9fd6ca9&download"

echo "Downloading external resources"

echo "\tAAI Discovery release" && \
cd webapp && \
curl -s -S -J -O "$ARCHIVE_WEBAPP" && \
tar -xf *.tar.gz && \
mkdir -p discovery && \
mkdir -p metadata-api && \
cd discovery && unzip ../discovery-service-*.war &> /dev/null && cd .. && \
cd metadata-api && unzip ../metadata-api-*.war &> /dev/null && cd .. && \
cp web.xml metadata-api/WEB-INF/
