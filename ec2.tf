resource "aws_instance" "my_ec2" {
  ami           = "ami_id"   # Amazon Linux 2023 (ap-south-1)
  instance_type = "instance_types"

  tags = {
    Name = "Terraform-EC2"
  }
}
