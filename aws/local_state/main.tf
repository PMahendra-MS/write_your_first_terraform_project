terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  tags = {
    Name = "Terraform_Demo"
  }
}
resource "aws_instance" "web_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  tags = {
    Name = "PR_Demo"
 }
}
resourec "aws_instance" "Demo_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  tag = {
    Name = "mahi_Demo"
 }
}
