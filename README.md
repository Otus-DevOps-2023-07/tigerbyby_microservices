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

