    resource "aws_subnet" "public_subnet1" {
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.my_demo_vpc.id
    availability_zone = "us-west-2a"
    map_public_ip_on_launch = true
    tags = {
    name = "web subnet 1"
  }
} 

  resource "aws_route_table_association" "my_association" {
  subnet_id = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.route_table1.id
}