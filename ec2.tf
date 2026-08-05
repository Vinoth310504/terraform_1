resource "aws_instance" "my_ec2" {
  count         = 2
  ami           = "ami_id"   # Amazon Linux 2023 (ap-south-1)
  instance_type = "instance_type"

  tags = {
    Name = "Terraform-EC2-${count.index}"
  }
}
