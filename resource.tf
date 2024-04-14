resource "aws_instance" "example-1" {
ami = "ami-0451f2687182e0411"
instance_type = "t2.micro"
count = "3"
tags = {
Name = "app_server"
}
}
