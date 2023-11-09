resource "aws_eip" "main" {
  domain = "vpc"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.ec2_instance.instance_id
  allocation_id = aws_eip.main.id
}