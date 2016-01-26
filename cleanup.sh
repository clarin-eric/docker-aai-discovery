#!/bin/sh

find webapp -name *.tar.gz -delete
find webapp -name *.war -delete
if [ -d "webapp/discovery" ]; then
	rm -r webapp/discovery
fi

if [ -d "webapp/metadata-api" ]; then
	rm -r webapp/metadata-api
fi
