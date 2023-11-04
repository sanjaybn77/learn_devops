# here we generating our own new public and private key by using ssh command

# login to your ansible server instance
1) step 1: ssh-keygen
     --> press enter 
   --> look into id_rsa --> private key
   --> look into id_rsa.pub --> public key
2) step 2) cd .ssh/
         --> cat id_rsa.pub
         --> copy that public key
3) step 3) login to your client instance
    --> cd .ssh/
    --> vim authorized_keys
    --> then pastre your public key here
4) step 4) do  the same step from step 2 to step 3) upto how many client machine you have

# establish the connection between your server and host or client 
5)  step 5) syntax:-> ssh -i "private_key" ec2-user@public_ip or private_ip
        --> example: ssh -i id_rsa ec2-user@private_ip

6) step 6) if you try to connect again i mean tommarow or they after tommarow
   --> you don't need private key
   --> for eg: ssh ec2-user@private_ip

# install ansible in amazon linux
--> sudo su
--> yum install ansible -y
--> or sudo yum install ansible -y

# creat inventory file in ansible 
--> mkdir my_ansible
--> cd my_ansible
--> vim hosts_ip
--> press i --> it means inseart mode

-- in hosts_ip file you can make all ip's are one group or you can make a group for individual project
--> eg: [all] --> for one group 
--> eg: [project1] --> for project 1 group


# to check the disk space for all machine in ansible single line script

1) ansible all -i hosts_ip -m shell -a "df -h"
2) here ansible --> it is an configuration tool
3) all --> represents to check all ip
4) -i -->
5) hosts_ip --> my inventory file name
6) -m --> it indicates what type of module do you want
7) shell --> module name
8) -a -->
9) df -h --> to check disk space and -h --> human readable format

# tips
1) don't run the script or ymal file or inventory just run it is in ec2-user
2) don't run it in sudo su user or root user


    
