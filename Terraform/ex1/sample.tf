resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "Web"
  }
}
output "web_ipaddress" {
value = aws_instance.web.public_ip
}


resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
output "user_ipaddress" {
value = aws_instance.user.public_ip
}