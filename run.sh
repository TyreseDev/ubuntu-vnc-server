#!/bin/bash

USERNAME="tyrese3915"

docker build -t ${USERNAME}/vnc-server:ubuntu-20.04 .
docker run -d -p 5901:5901 -p 2222:22 ${USERNAME}/vnc-server:ubuntu-20.04