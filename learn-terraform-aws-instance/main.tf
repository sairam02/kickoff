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
  region = "ap-south-2"
}

resource "aws_instance" "app_server_check" {
  ami           = "ami-0e6a156749de5c143"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleAppServerCheckInstance"
  }
}
