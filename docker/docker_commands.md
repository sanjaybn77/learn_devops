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
1) docker images

# 2)  to check docker images state
   1) docker pa -a

# 3) to delete the container images
  1) docker rm [ container_id ]

# if it gives worning like stop the image first  
  1) docker stop [ container_id ]
  2) docker rmi [ container_id ]

#



