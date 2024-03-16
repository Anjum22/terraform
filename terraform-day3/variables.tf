variable "ami" {
  description = "passing ami value to ec2.tf"
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = ""
}

variable "key_name" {
  type = string
  default = ""
}
