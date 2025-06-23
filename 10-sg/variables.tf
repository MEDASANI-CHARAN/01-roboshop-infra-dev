variable "frontend_sg_name" {
  type = string
  default = "frontend"
}

variable "frontend_sg_description" {
  type = string
  default = "created sg for frontend instance"
}

variable "vpc_id" {
  type = string
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