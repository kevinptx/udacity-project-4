#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kpeery/udacityproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject --generator=run-pod/v1 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl port-forward deployment/project4 8000:80
kubectl port-forward pod/udacityproject 8000:80