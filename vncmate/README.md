Usage
=====
docker run marcoinacio/vncmate password resolution

Password must be at most 8 characters. Defaults to defpass.
Resolution must in format WIDTHxHEIGTH. Defaults to 1200x700.

You can then connect to it using a VNC client.
E.g.: vncviewer 172.17.0.2:5901

(You can get the container IP using docker inspect)
