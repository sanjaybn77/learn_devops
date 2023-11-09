module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name ="jenkins_terraform"

  instance_type          ="t2.micro"
  ami			 ="ami-098940df4d3292e9a"
  key_name               ="terraform_main"
  monitoring             =true
  vpc_security_group_ids =["sg-0bca143cd9c27a8d7"]
  user_data =file("jenkins_install.sh")
}