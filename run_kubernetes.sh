#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=elshadrzayev/app

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run house-prediction\
    --image=$dockerpath\
    --port=80 --labels app=app



# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward house-prediction 8080:80

