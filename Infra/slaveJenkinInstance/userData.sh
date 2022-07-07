#!/bin/bash

echo '<<Starting User data Script>>'

sudo yum -y update

# echo '<<Installing Jenkins>>'

# wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
# rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
# wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
# sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo

# http://169.254.169.254/latest/

echo '<<Installing JAva>>'
sudo yum -y install java

echo '<<Installing Git>>'
sudo yum -y install git

echo '<<Installing AWS CLI V2>>'
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


echo '<<Installing gcloud cli>>'
cd /home/ec2-user
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-376.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-sdk-376.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh -q

source /home/ec2-user/google-cloud-sdk/path.bash.inc
source /home/ec2-user/google-cloud-sdk/completion.bash.inc
source ~/.bashrc

gcloud -v

echo '<<Configuring kubectl for gke>>'
gcloud components update kubectl -q


chmod -R 777 /home/ec2-user/.config/gcloud
chmod -R 777 /home/ec2-user/.config/gcloud/logs

echo '<<Installing Helm>>'
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
helm version --short

chmod 777 /home/ec2-user/.config/helm/repositories.lock
# chmod -R 777 /home/ec2-user/.config/helm

echo '<<Updating Helm Repos>>'
helm repo add stable https://charts.helm.sh/stable


echo '<<Installing Docker>>'
sudo yum -y install docker 
sudo systemctl start docker
sudo docker version

chmod 777 /var/run/docker.sock


# mount -t nfs -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 $(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)._$__{EFSJenkinsHomeVolume}.efs.__$__{AWSRegion}.amazonaws.com:/ /var/lib/jenkins

# Start the Jenkins service
# service jenkins start