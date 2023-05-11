resource "aws_network_interface" "proj-ni" {
 subnet_id = aws_subnet.public_subnet1.id
 private_ips = ["10.0.1.10"]
 security_groups = [aws_security_group.my_security_group.id]
}
# Attaching an elastic IP to the network interface
resource "aws_eip" "proj-eip" {
 vpc = true
 network_interface = aws_network_interface.proj-ni.id
 associate_with_private_ip = "10.0.1.10"
}