resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.Instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  #user_data = ["${path.module}/kafka_script.sh"]
  tags = {
    Name = "kafka"
  }
  user_data = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
EOF
}