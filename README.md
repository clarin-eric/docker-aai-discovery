# CLARIN docker tomcat image
Packages:

Volumes:

Ports:

# Build
A make target is available to build this image:

```
make
```

# Deploy
A make target is available to push this image to the clarin docker repository:

```
make push
```

# Run
Using the docker client you can easily start a container based on this image:

```
docker run \
	-ti \
	--rm \
	-p 8009 \
	-p 8080 \
	-p 8443 \
	-e PASSWORD="averysecurepassword" \
	docker.clarin.eu/tomcat8:1.0.1
```