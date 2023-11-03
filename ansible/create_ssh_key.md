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
    
