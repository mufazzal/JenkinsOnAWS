#!/bin/bash

echo '<<Starting User data Script>>'

yum -y update

echo "starting Docker"
sudo systemctl start docker
echo "Docker Deamon started"
sudo docker version

echo "allowing to access of docker deamon socket to all users"
chmod 777 /var/run/docker.sock


echo "allowing to helm repository to all users"
chmod 777 /home/ec2-user/.config/helm/repositories.lock

chmod -R 777 /home/ec2-user/.config/gcloud
chmod -R 777 /home/ec2-user/.config/gcloud/logs
source /home/ec2-user/google-cloud-sdk/path.bash.inc
source /home/ec2-user/google-cloud-sdk/completion.bash.inc
source ~/.bashrc
gcloud -v
kubectl version

