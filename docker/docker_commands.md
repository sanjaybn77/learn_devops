# to install the docker 
yum install docker -y

# to setup the docker 

1) systemctl start docker
2) systemctl enable docker

# to download the tools image to docker 

docker pull [ image name ]
eg : 
1) docker pull ubuntu
2) docker pull jenkins/jenkins:lts

# to check how many images are there
docker images


