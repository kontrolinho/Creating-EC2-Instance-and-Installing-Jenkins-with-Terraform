resource "aws_instance" "Jenkins_Instance" {
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  ami = var.ami
  user_data = file("${path.module}/user_data.sh")
  key_name = "ssh_key"
  vpc_security_group_ids = [aws_security_group.Access-SG.id]
  tags = {
  Name = var.instance_name
  }
}