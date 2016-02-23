# CLARIN docker discovery service image
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
	-p 8443 \
	-e PASSWORD="averysecurepassword" \
	docker.clarin.eu/aai-discovery:1.9.1
```

After starting the container you can access `https://<docker_ip>:<docker_8443_port>/discovery/`. Since the site uses a self signed certificate you have to accept the browser warning.

In a production deployment you 