.PHONY: help build push

USER_NAME="tigerbybyby"

help:
	@echo "make build"
	@echo "	Build images"
	@echo "make push"
	@echo "	Push to github"
	@echo "make deploy"
	@echo "Deploy docker-compose app"

.build_post:
	@echo "Building post"
	@cd ./src && docker build -t ${USER_NAME}/post post-py

.build_comment:
	@pwd
	@echo "Building comment"
	@cd ./src && docker build -t ${USER_NAME}/comment comment

.build_ui:
	@echo "Building ui"
	@cd ./src && docker build -t ${USER_NAME}/ui ui

.build_prometheus:
	@echo "Building prometheus"
	@cd ./monitoring/ && docker build -t ${USER_NAME}/prometheus .

build: .build_post .build_comment .build_ui .build_prometheus

.docker_login:
	@docker login -u ${USER_NAME}

.docker_push:
	@docker push ${USER_NAME}/post
	@docker push ${USER_NAME}/comment
	@docker push ${USER_NAME}/ui

push: .docker_login .docker_push

deploy:
	@echo "Starting app..."
	@cd docker && docker-compose up -d

stop:
	@echo "Stoping app..."
	@cd docker && docker-compose down
