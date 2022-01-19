#!/bin/sh
source .env

docker stop imaging-uploader
docker rm imaging-uploader
docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD
docker build -t $DOCKER_HUB_USERNAME/imaging-uploader ./service/uploader/
docker run -d -p 4004:4004 --name imaging-uploader $DOCKER_HUB_USERNAME/imaging-uploader
docker push $DOCKER_HUB_USERNAME/imaging-uploader

kubectl apply -f ./service/uploader/deployment.yaml