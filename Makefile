IM_NAME=lmwafer/orb-slam-3-ready
IM_TAG=1.0-ubuntu18.04
CONT_NAME=orb-slam-3-container # You will need to apply the exact same name to container_name in orb-container/docker-compose.yml

default: up enter


up:
	sudo xhost +local:root && sudo docker-compose up -d

enter:
	clear && docker exec -it ${ORB_CONT_NAME} bash

down:
	docker-compose down

build:
	sudo docker build -t ${ORB_IM_NAME}:${ORB_IM_TAG} .