resource "aws_instance" "infra" {
  ami = var.ami_type
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.sg.id ]
  key_name = var.key_pair
  user_data = file("${path.module}/jenkins.sh")
  tags = {
    "Name"=var.instance_name
    "env"=var.env
    "team"=var.team
  }

  lifecycle {
    create_before_destroy = true
  }
}
