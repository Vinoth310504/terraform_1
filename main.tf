terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "ap-south-1"   # Mumbai Region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"   # Amazon Linux 2023 (ap-south-1)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}