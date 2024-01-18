#!/bin/bash

# If the .pid file exists, VNC had previously started and did not shut down properly. Remove the file.
rm -f /tmp/.X1-lock /tmp/.X11-unix/X1

# Start VNC server with the geometry defined by the VNC_SCREEN_GEOMETRY environment variable.
su - ubuntu -c "vncserver -geometry $VNC_SCREEN_GEOMETRY -depth $VNC_COL_DEPTH $DISPLAY"

# Start the SSH daemon
/usr/sbin/sshd

# Trap SIGTERM and SIGINT signals and gracefully exit
trap "vncserver -kill :1; echo 'VNC Server has been stopped'; /usr/sbin/sshd -D; exit 0" SIGTERM SIGINT

# Keep the container running
while true; do
  sleep 1
done