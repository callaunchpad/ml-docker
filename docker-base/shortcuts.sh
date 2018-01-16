#!/bin/bash

docker-build () {
	sudo docker build -t $1 .
	sudo docker run --runtime=nvidia -it -d --name=$1 $1 > /dev/null
}
docker-run () {
	sudo docker start $1 > /dev/null
	sudo docker exec -it $1 bash
}
docker-clean() {
	sudo docker stop $(sudo docker ps -a -q)
	sudo docker rm $(sudo docker ps -a -q)
	sudo docker rmi -f $(sudo docker images -q)
}
