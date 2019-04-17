# AWS Config

variable "aws_region" {
  default = "ap-south-1"
}

variable "image_version" {
    type = "map"
    default = {
        "16.04"  = "ami-0a574895390037a62"
        "18.04" = "ami-007d5db58754fa284"

    }
}

