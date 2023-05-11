  resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.my_demo_vpc.id

  tags = {
    name = "gateway1"
  }

}