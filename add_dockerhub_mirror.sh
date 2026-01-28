#!/bin/bash

echo '{
  "registry-mirrors": [
    "https://dockerhub.timeweb.cloud",
    "https://mirror.gcr.io",
    "https://docker.mirrors.sbg.ac.ir"
  ]
}' | sudo tee /etc/docker/daemon.json

sudo systemctl restart docker

echo "Docker mirror succsesfully added!"
