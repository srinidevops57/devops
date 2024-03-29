data "aws_ami" "centos" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
  }


resource "aws_instance" "web" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "Web"
  }
}
output "web_ipaddress" {
value = aws_instance.web.public_ip
}


resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
output "user_ipaddress" {
value = aws_instance.user.public_ip
}