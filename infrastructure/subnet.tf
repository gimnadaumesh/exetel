#Sublic Subnet Creation in main VPC
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "exetel-Public"
  }
  depends_on = [
    aws_vpc.main
  ]
}

