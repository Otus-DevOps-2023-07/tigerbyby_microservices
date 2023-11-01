.PHONY: help build push

USER_NAME="tigerbybyby"

help:
	@echo "make build"
	@echo "	Build images"
	@echo "make push"
	@echo "	Push to github"

.build_post:
	@echo "Building post"
	@cd ./src && docker build -t ${USER_NAME}/post:1.0 post-py

.build_comment:
	@pwd
	@echo "Building comment"
	@cd ./src && docker build -t ${USER_NAME}/comment:1.0 comment

.build_ui:
	@echo "Building ui"
	@cd ./src && docker build -t ${USER_NAME}/ui:1.0 ui

build: .build_post .build_comment .build_ui

.docker_login:
	@docker login -u ${USER_NAME}

.docker_push:
	@docker push ${USER_NAME}/post
	@docker push ${USER_NAME}/comment
	@docker push ${USER_NAME}/ui

push: .docker_login .docker_push
