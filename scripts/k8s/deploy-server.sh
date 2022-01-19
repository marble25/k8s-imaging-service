#!/bin/sh
source .env

docker stop imaging-server
docker rm imaging-server
docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD
docker build -t $DOCKER_HUB_USERNAME/imaging-server ./server/
docker run -d -p 3000:3000 --name imaging-server $DOCKER_HUB_USERNAME/imaging-server
docker push $DOCKER_HUB_USERNAME/imaging-server

kubectl apply -f ./server/deployment.yaml