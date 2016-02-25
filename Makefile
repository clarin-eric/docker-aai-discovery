make:
	@sh cleanup.sh
	@sh prepare.sh
	@echo "Building docker image"
	@docker build -t docker.clarin.eu/aai-discovery:1.9.4 . >> docker_build.log 2>&1
	@sh cleanup.sh

push:
	@docker push docker.clarin.eu/aai-discovery:1.9.4

all: build
