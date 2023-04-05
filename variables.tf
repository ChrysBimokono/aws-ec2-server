
variable "region" {
  type = string
  default = "us-east-1"
}
variable "ami_type" {
  description = "ami info"
  type = string
  default = "ami-04581fbf744a7d11f"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_pair" {
  default = "dev-wdp"
}

variable "env" {
  default = "dev"
}

variable "team" {
  default = "dev Team"
}
variable "instance_name" {
  default = "web-server-dev"
}