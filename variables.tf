variable "ami" {
  type = map(string)
  # default = "ami-0ecb62995f68bb549"
  default = {
    "windows" = "ami-06777e7ef7441deff"
    "ubuntu"  = "ami-0ecb62995f68bb549"
    "amazon"  = "ami-068c0051b15cdb816"
  }
}

variable "key_name" {
  type    = string
  default = "vickey_pem"
}

variable "instance_typ" {
  # type        = list(string)
  # default     = ["t3.micro", "t3.small", "t3.medium"]
  type = map(string)
  default = {
    "micro"  = "t3.micro"
    "small"  = "t3.small"
    "medium" = "t3.medium"
  }
  description = "t3.micro has 2 CPU and 1GiB Memory, t3.small 2CPU and 2GiB, t3.medium 2CPU and 4GiB"
}

variable "name_of_instance" {
  type    = string
  default = "Testing-Instance"
}

variable "vol_size" {
  # type    = list(number)
  # default = [30, 15, 50, 10]
  type = map(string)
  default = {
    "30" = "30"
    "15" = "15"
    "50" = "50"
    "10" = "10"
  }
}

variable "vol_typ" {
  type    = string
  default = "gp3"
}