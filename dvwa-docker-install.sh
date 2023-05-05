#!/bin/bash

echo "Enter Your Sudo Password : "
read PASS
echo "$PASS" | sudo -S apt install docker.io -y
echo "$PASS" | sudo -S docker pull vulnerables/web-dvwa
touch dvwa
echo "sudo docker run --rm -it -p 8080:8080 vulnerables/web-dvwa" | tee dvwa
echo "$PASS" | sudo -S chmod +x dvwa
echo "$PASS" | sudo -S cp dvwa /bin
echo "$PASS" | sudo -S cp dvwa /usr/bin
echo "$PASS" | sudo -S cp dvwa /usr/local/bin
echo "DVWA has been successfully installed on your machine, run it using: dvwa"
