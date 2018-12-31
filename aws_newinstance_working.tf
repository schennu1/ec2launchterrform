
provider "aws" {
AWS_ACCESS_KEY_ID = "${var.aws_access_key}""
AWS_SECRET_ACCESS_KEY = ""
region = "us-east-1"
skip_credentials_validation = true

}

resource "aws_instance" "example" {
ami = "ami-009d6802948d06e52"
instance_type = "t2.micro"
key_name = "ansible_keypair"


tags {
Name = "My New AWS Instance"
}
}