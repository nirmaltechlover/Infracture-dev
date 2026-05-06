provider "aws" {


  region = "us-east-1"
}


resource "aws_instance" "dev-instance" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.small"

  key_name = "dev-infra"

  tags = {
    Name = "dev-instance"
  }

}



output "dev-instance-public-ip" {
  value = aws_instance.dev-instance.public_ip

}







