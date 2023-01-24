#!/bin/bash

sudo su
apt install docker.io -y
docker pull vulnerables/web-dvwa
touch dvwa
echo "sudo docker run --rm -it -p 8080:8080 vulnerables/web-dvwa" | tee dvwa
chmod +x dvwa
cp dvwa /bin
cp dvwa /usr/bin
cp dvwa /usr/local/bin
echo "DVWA has been successfully installed on your machine, run it using: dvwa"
