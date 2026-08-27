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
  ami           = "ami-0bdc7d025135d7b49"
  instance_type = "t3.micro"
  tags = {
    Name = "Terraform_Demo"
  }
}
resource "aws_instance" web_server" {
  ami           = "ami-0bdc7d025135d7b49"
  instance_type = "t3.micro"
  tags = {
    Name = "PR_Demo"
 }
}
