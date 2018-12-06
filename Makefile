.PHONY = docker_up docker_destroy

NAME = python-http-server

docker_up:
	@docker build -t willbennett/${NAME}:latest .
	@docker run -d -p 9000:9000 --name ${NAME} willbennett/${NAME}

docker_destroy:
	@docker stop ${NAME}
	@docker rm ${NAME}
	@docker rmi willbennett/${NAME}
