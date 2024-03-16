variable "ami" {
  description = "passing ami value to main.tf"
  type = string
  default = "ami-0ba259e664698cbfc"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "sample-ec2-keypair"
}