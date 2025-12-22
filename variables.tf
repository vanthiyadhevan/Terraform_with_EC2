variable "ami" {
  type = map(string)
  # default = "ami-0ecb62995f68bb549"
  default = {
    "windows" = "ami-06777e7ef7441deff"
    "ubuntu"  = "ami-0ecb62995f68bb549"
  }
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

variable "vol_size" {
  type    = list(number)
  default = [30, 15, 50, 10]
}

variable "vol_typ" {
  type    = string
  default = "gp3"
}