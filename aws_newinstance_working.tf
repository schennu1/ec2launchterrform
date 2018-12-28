
provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "example" {
ami = "ami-009d6802948d06e52"
instance_type = "t2.micro"
key_name = "ansible_keypair"

tags {
Name = "My New AWS Instance"
}
}