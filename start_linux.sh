#!/bin/bash

xhost +

if [ $( docker ps -a | grep azure2 | wc -l ) -gt 0 ]; then
    echo -n "AZURE2 container running; stopping and removing it..."
    docker stop azure2 > /dev/null 
    docker rm azure2 > /dev/null  
    echo "Done!"
fi

if [ $( docker volume ls | grep azure2-volume | wc -l ) -gt 0 ]; then
    echo "AZURE2 volume already exists."
else
    echo -n "Creating docker volume for AZURE2..."
    docker volume create azure2-volume > /dev/null 
    echo "Done!"
fi

echo -n "Starting AZURE2 container... "
docker run -d \
       --name=azure2 \
       --hostname=azure2 \
       --restart=always \
       -p 8888:8888 \
       -e DISPLAY=:0 \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v azure2-volume:/home/azure2/reactions \
       skowrons/azure2:latest bash -c "./entrypoint.sh"
echo "Done!"
