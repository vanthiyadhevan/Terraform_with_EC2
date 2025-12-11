data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default_subnet" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "availability-zone"
    values = ["us-east-1a"]
  }
}

data "aws_security_group" "testify_sg" {
  filter {
    name   = "group-name"
    values = ["Testify-SG"]
  }

  vpc_id = data.aws_vpc.default.id
}

resource "aws_instance" "sample_instance" {
  ami              = var.ami
  key_name         = var.key_name
  instance_type    = var.instance_typ
  user_data_base64 = filebase64("./docker_automation.sh")

  associate_public_ip_address = true

  subnet_id              = data.aws_subnet.default_subnet.id
  vpc_security_group_ids = [data.aws_security_group.testify_sg.id]

  tags = {
    Name = var.name_of_instance
  }
}