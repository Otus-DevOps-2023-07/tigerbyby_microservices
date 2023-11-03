[![Run tests for OTUS homework](https://github.com/Otus-DevOps-2023-07/tigerbyby_microservices/actions/workflows/run-tests.yml/badge.svg)](https://github.com/Otus-DevOps-2023-07/tigerbyby_microservices/actions/workflows/run-tests.yml)

# tigerbyby_microservices
tigerbyby microservices repository

## Homework #13

### What done
- Installed docker
- Learn and test basic docker commands: ps, images, run, create, exec, commit, kill, system
- Installed docker-machine and yc
- Created Dockerfile, build an image and runned container
- Created dockerhub account
- Pushed image to dockerhub


### Run commands
```
docker run --name reddit -d -p 9292:9292 tigerbybyby/otus-reddit:1.0

```

## Homework #14

### What done
- Downloaded app from link
- Created dockerfiles
- Built images from dockerfiles
- Created docker network and network aliases
- Runned docker containers from images


### Run commands
```
docker run -d --network=reddit  --network-alias=post_db --network-alias=comment_db mongo:3.6
docker run -d --network=reddit  --network-alias=post tigerbybyby/post:1.0
docker run -d --network=reddit  --network-alias=comment tigerbybyby/comment:1.0
docker run -d --network=reddit  -p 9292:9292 tigerbybyby/ui:1.0

```

## Homework #15

### What done
- 
- Tested docker network drivers: none, host, bridge
- Installed docker-compose
- Creted docker-compose.yml
- Used environments


### Run commands
```
docker-compose up -d
docker ps -a

```

## Homework #16

### What done
- 
- Installed kvm virtual machine
- Installed docker and docker-compose on vm
- Installed gitlab-ce from docker-compose.yml
- Created and configured gitlab-ci.yml
- Created stage and prod stages
- Succesfully runned pipeline jobs


### Run commands
```
git checkout -b gitlab-ci-1
git remote add gitlab http://<your-vm-ip>/homework/example.git
git push gitlab gitlab-ci-1

```

## Homework #17

### What done
- Added prometheus Docker file and config
- Built prometheus image and pushed it to dockerhub
- Configured node_exporter
- Configured mongodb_exporter
- Added exporters into docker-compose.yml
- Configured blackbox_exporter
- Created Makefile


### Run commands
```
for i in ui post-py comment; do cd src/$i; bash docker_build.sh; cd -; done
docker-compose up -d
make help

```

