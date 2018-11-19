.PHONY = docker_up docker_destroy

NAME = python-http-server

docker_up:
	@docker build -t will_bennett/${NAME}:latest .
	@docker run -d -p 9000:9000 --name ${NAME} will_bennett/${NAME}

docker_destroy:
	@docker stop ${NAME}
	@docker rm ${NAME}
	@docker rmi will_bennett/${NAME}
