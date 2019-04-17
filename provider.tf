provider "aws" {
  region     = "${var.aws_region}"
  shared_credentials_file = "/root/.aws/credentials"
}


resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}


resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.my_vpc.id}"
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "Main"
  }
}

