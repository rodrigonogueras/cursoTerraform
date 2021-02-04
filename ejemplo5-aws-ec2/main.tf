terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" { 
    profile = "default"
    region  = "eu-west-1"
}

resource "aws_instance" "ec2-Rodrigo" {
  ami           = "ami-0176d5cc50152c509"
  instance_type = "t2.micro"
  tags          = {
        Name = "ec2-Rodrigo"
  }
}
