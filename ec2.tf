output "public-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "private-ip" {
  value = aws_instance.myawsserver.private_ip
}

variable "image" {
  type = string
  default = "ami-02f3416038bdb17fb"
}

variable "hw" {
  default = "t2.micro"
}

variable "name" {
  default = "gagan-manual-tf"
}

variable "env" {
  default = "prod"
}

variable "bucket-name" {
  default = "gagandefaultbucket"
}
