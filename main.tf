provider "aws" {
region = "ap-south-1"
access_key = "Access-Key"
secret_key = "Secret-Key"
}

resource "aws_instance" "example-1" {
ami = "ami-0451f2687182e0411"
instance_type = "t2.micro"
count = "1"
tags = {
Name = "Devop_Terra"
}
}
