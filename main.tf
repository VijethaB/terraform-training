provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = var.hw
 # key_name = "gagan-new"
  tags = {
    Name = lower (var.name)
    env = upper (var.env)
    owner = upper ("Gagandeep")
    dept = "eng"
    client = "jpmc"
  }
}
