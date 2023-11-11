
# AWs EC2 module for create EC2
module "ec2_instance" {
  #Module source Directory
  source  = "terraform-aws-modules/ec2-instance/aws"
 
  #EC2 Name
  name = " test-ec2"
  
  #parrameters Which can use to spinup ec2

  instance_type          = "t2.micro"
  key_name               = "exetel"
  ami                    = "ami-0df4b2961410d4cff"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_80.id]
  subnet_id              = aws_subnet.main.id
  

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
  
  #Wait untill creating the Security Groups
  depends_on = [
    aws_subnet.main , aws_security_group.allow_80
  ]
}