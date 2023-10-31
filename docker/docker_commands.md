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

# to remove the containers
  1) docker stop [ container_id ]
  2) docker rmi [ container_id ]

# to run the docker images

   1) docker run [ -d ] [ -p ] [ portnumber: default port number ] contsiner_id

# to start and stop the container

   1) docker start [ container_id ]
   2) docker stop [ container_id ]

# to remove all the images in single shot
   1) docker rmi -f $(docker images -q)

# to pull the ubntu images

   1) docker run -it ubuntu
# if we go inside the container

   1) docker exec -it [ container_id ] /bin/bash
# restart unless stopped
   1) docker run -d --restart unless-stoped -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts --name sanjay_server


# copy and paste it some whare
   1) docker cp ./file_name [ containe_id ]:path/to/container
      

   


