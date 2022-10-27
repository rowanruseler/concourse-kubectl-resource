PROJECT = concourse-kubectl
ID = rowanr/${PROJECT}
TAG = 1.0.0

all: build push

build:
	docker build --tag ${ID}:${TAG} .

push:
	docker push ${ID}

run:
	docker run \
		--volume $(shell pwd):/opt/concourse-kubectl \
		--workdir /opt/concourse-kubectl \
		--interactive \
		--tty \
		${ID}:latest \
		bash
