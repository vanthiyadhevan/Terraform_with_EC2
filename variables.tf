variable "ami" {
  type    = string
  default = "ami-0ecb62995f68bb549"
}

variable "key_name" {
  type    = string
  default = "vickey_pem"
}

variable "instance_typ" {
  type    = string
  default = "t3.micro"
}

variable "name_of_instance" {
  type    = string
  default = "Testing-Instance"
}