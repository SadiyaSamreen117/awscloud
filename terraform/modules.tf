provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "path of the module"
  ami_value = "ami-0123456789abcd"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-1234567890dfe"
}