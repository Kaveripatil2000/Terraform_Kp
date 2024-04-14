:provider "aws" {
region = "ap-south-1"
access_key = "--------"
secret_key = "--------"
}

resource "aws_instance" "example-1" {
ami = "ami-0451f2687182e0411"
instance_type = "t2.micro"
count = "2"
tags = {
Name = "check-testpage"
}
security_groups = [aws_security_group.example.name]
user_data= file("userdata.sh")
}

