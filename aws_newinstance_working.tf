
provider "aws" {
access_key = "AKIAJFZ4TXAV5DKPPB5A"
secret_key = "Q4m9Xi+cBMUA7EY/Rqm5Ksg1TyZHVPlWlG9DB8wF"
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