docker rm -f ros_container

xhost +
docker run -it --rm\
  --privileged=true \
  --net=host \
  -e DISPLAY=$DISPLAY \
  --env="QT_X11_NO_MITSHM=1" \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --security-opt apparmor:unconfined \
  -v /dev/input:/dev/input \
  -v /dev/video0:/dev/video0 \
  -v /var/run/dbus:/var/run/dbus \
  -v ~/Desktop/ROS2_Study:/root/ROS2_Study \
  yahboomtechnology/ros-humble:4.1.2 \
  /bin/bash \
  /root/1.sh