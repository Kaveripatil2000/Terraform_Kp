provider "aws" {
region = "ap-south-1"
access_key = "-------------------"
secret_key = "-------------------"
}

resource "aws_instance" "example" {
ami = "ami-0451f2687182e0411"
instance_type = "t2.micro"
count = "2"
tags = {
Name = "testpage"
}
user_data= file("userdata.sh")
}
