
resource "aws_instance" "web" {
  ami           = "${var.image_version["16.04"]}"
  instance_type = "t2.micro"
  key_name      = "deployer-key"
  subnet_id     = "${aws_subnet.subnet1.id}"
root_block_device {
    volume_size = "20"
  }

  tags = {
    Name = "HelloWorld"
  }
}
