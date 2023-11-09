resource "aws_route_table_association" "main" {
    subnet_id = aws_subnet.main.id
    route_table_id =aws_vpc.main.id
}



resource "aws_route" "main" {
    route_table_id = aws_vpc.main.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.qw.id
}

