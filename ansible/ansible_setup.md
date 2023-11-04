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

    
