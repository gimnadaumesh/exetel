
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "exetel assignment"

  instance_type          = "t2.micro"
  key_name               = "exetel"
  monitoring             = true
  vpc_security_group_ids = aws_security_group.allow_80.id
  subnet_id              = aws_subnet.main.id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
  depends_on = [
    aws_vpc.main
  ]
  depends_on = [
    aws_subnet.main
  ]
}