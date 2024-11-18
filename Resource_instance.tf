provider "aws" {
  region  = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "linux" {
  count = "1"
  ami = var.ec2_ami
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name= "linux_ec2"
  tags = {
    Name = "Ansible"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo amazon-linux-extras install ansible2
    ansible --version
  EOF
}