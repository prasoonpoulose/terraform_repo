provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "linux" {
  count                       = "1"
  ami                         = var.ec2_ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = "aws_ec2"
  tags = {
    Name = "Ansible"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo amazon-linux-extras install ansible2
    ansible --version
  EOF
}