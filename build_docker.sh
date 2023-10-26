#!/bin/bash     
PROJECT_ID="dulcet-antler-403116"
REGION="us-central1"
REPOSITORY="houseprice"
IMAGE='houseprice_training'
IMAGE_TAG='houseprice_training:latest'

docker build -t $IMAGE .
docker tag $IMAGE $REGION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE_TAG