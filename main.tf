provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "dockerjenkins" {
  ami             = "ami-09d3b3274b6c5d4aa"
  instance_type   = "t2.micro"
  key_name        = "abelkp"
  security_groups = ["launch-wizard-1"]

  tags = {
    Name = "dockerjenkins"
  }
  user_data = file("jenkinsfile")
  tags = {
    Name = "app_deployments"
  }
}

