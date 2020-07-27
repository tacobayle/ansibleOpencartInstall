#!/bin/bash
sudo apt-get update
sudo apt install -y mysql-server
sudo apt install -y python3-pymysql
echo "cloud init done" | tee /tmp/cloudInitDone.log
