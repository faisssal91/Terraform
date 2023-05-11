  resource "aws_instance" "first_instance" {
  ami               = "ami-0fcf52bcf5db7b003"
  instance_type     = "t2.micro"
  count             =  2
  availability_zone = "us-west-2a"
  key_name          = "west key pair"
  vpc_security_group_ids      = ["${aws_security_group.my_security_group.id}"]
  subnet_id                   = aws_subnet.public_subnet1.id
  associate_public_ip_address = "true"
  

  }