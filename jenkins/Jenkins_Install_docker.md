
# connect to root
- sudo su 

# update the Linux
- yum update -y

# to install docker 
- yum install docker -y

# to start the docker services
- systemctl start docker


# to Enable the docker services

- systemctl enable docker



# To run jenkins server using docker image

- docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

- # to check the jenkins existing machine
- docker ps -a

- # to run the specific machine
- docker start [ container_id ]

- # how to enter the inside the container
    docker exec -it [ container_id ] bin/bash

                # or
  docker exec -it [ container_name ] bin/bash

    to check the jenkins password or recover the password

  step 1:  docker exec -it [ container_id ] bin/bash
  step 2: var/jenkins_file/secrets/initialAdminPaswards
  

                  
-  


