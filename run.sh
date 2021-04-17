echo "Allowing connections from local machine.."
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
export DISPLAY=0:0
xhost + $ip

echo "Starting evaluation container..."
docker container run \
-e DISPLAY=$ip:0 \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $(pwd)/evaluation:/evaluation \
--rm -it evaluation-base "/bin/bash"