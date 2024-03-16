resource "aws_instance" "dev" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = aws_subnet.dev.id
  tags = {
    Name = "tfm_dev_ec2"
  }
  availability_zone = "ap-south-1"
}