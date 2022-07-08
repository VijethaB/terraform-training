resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = "${ var.env == "prod" ? "t2.medium" : "t2.micro" }"

  tags = {
    Name = var.name
    Env = var.env
    Owner = "vij"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}