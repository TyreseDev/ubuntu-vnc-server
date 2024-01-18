#!/bin/bash

USERNAME="tyrese3915"

docker login -u ${USERNAME}
docker build -t ${USERNAME}/vnc-server:ubuntu-20.04 .
docker tag ${USERNAME}/vnc-server:ubuntu-20.04 ${USERNAME}/vnc-server:ubuntu-20.04
docker push ${USERNAME}/vnc-server:ubuntu-20.04