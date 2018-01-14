#!/bin/bash

docker-build () {
	sudo docker build -t $1 .
}
docker-run () {
	sudo docker run --runtime=nvidia -it $1 bash
}
