
resource "aws_instance" "web" {
  ami           = "${env.TF_VAR_ami}"
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
