resource "aws_route_table_association" "main" {
    subnet_id = aws_subnet.main.id
    route_table_id =aws_vpc.main.default_route_table_id
}


# Route table Association for internet gateway with public subnet
resource "aws_route" "main" {
    route_table_id = aws_vpc.main.default_route_table_id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
}

