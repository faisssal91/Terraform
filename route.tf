    resource "aws_route_table" "route_table1" {
    vpc_id = aws_vpc.my_demo_vpc.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
    route {
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
 }
    tags = {
    name = "route to internet"
  }
}

 



