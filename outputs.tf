output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "default_subnets" {
  value = data.aws_subnet.default_subnet.id
}

output "security_group" {
  value = data.aws_security_group.testify_sg.name
}

output "instance_id" {
  value = aws_instance.sample_instance.id
}