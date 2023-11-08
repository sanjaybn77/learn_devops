module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Terraform_main"

  instance_type          = "t2.micro"
  ami			 ="ami-07b5c2e394fccab6e"
  key_name               = "terraform_main"
  monitoring             = true
  vpc_security_group_ids = ["sg-0e0a9b6b7aaacc40a"]
}