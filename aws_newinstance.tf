provider "aws" {
access_key = "AKIAJE6MIAR2MOBA2MVA"
secret_key = "L2RMw2b2u6ekn0YXQUBu8WOzwL3O28pUKNJ2qsqA"
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

