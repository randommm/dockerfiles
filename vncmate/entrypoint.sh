#!/bin/bash

pass=$1
resol=$2

if [ "x$pass" = "x" ]; then
    pass="defpass"
    echo "Warning: using default password"
fi

if [ "x$resol" = "x" ]; then
    resol="1200x700"
    echo "Warning: using default resolution"
fi

mkdir /home/vncuser/.vnc/ && \
echo $pass | vncpasswd -f > /home/vncuser/.vnc/passwd && \
chmod 700 -R /home/vncuser/.vnc/ && \
vncserver :1 -geometry $resol -depth 24 && \
tail -F /home/vncuser/.vnc/*.log
