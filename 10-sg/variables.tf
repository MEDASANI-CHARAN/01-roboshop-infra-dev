variable "frontend_sg_name" {
  type = string
  default = "frontend"
}

variable "bastion_sg_name" {
  type = string
  default = "bastion"
}

variable "frontend_sg_description" {
  type = string
  default = "created sg for frontend instance"
}

variable "bastion_sg_description" {
  type = string
  default = "created sg for bastion instance"
}

variable "project" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "sg_tags" {
  type = map
  default = {}
}