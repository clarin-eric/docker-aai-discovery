REPOSITORY="docker.clarin.eu"
NAME="aai-discovery"
VERSION="1.9.5"
IMAGE = "${REPOSITORY}/${NAME}:${VERSION}"

all: build

make:
	@sh cleanup.sh
	@sh prepare.sh
	@echo "Building docker image"
	@docker build -t ${IMAGE} . >> docker_build.log 2>&1
	@sh cleanup.sh

push:
	@docker push ${IMAGE}
