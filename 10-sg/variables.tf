variable "sg_names" {
  default = [
    # databases
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue", "user", "cart", "shipping", "payment",
    # frontend
    "frontend",
    "bastion",
    # frontend-lb
    "frontend-lb",
    # backend-lb
    "backend-lb"
    ]
}

variable "sg_description" {
  default = [
    # databases
    "created sg for mongodb instance", 
    "created sg for redis instance",
    "created sg for mysl instance",
    "created sg for rabitmq instance",
    # backend
    "created sg for catalogiue instance",
    "created sg for user instance",
    "created sg for cart instance",
    "created sg for shipping instance",
    "created sg for payment instance",
    # frontend
    "created sg for frontend instance",
    "created sg for bastion instance",
    "created sg for frontend-lb instance",
    "created sg for backend-lb instance"
    ]
}

# variable "frontend_sg_name" {
#   type = string
#   default = "frontend"
# }

# variable "bastion_sg_name" {
#   type = string
#   default = "bastion"
# }

# variable "backend-alb_sg_name" {
#   type = string
#   default = "backend_alb"
# }

# variable "frontend-alb_sg_name" {
#   type = string
#   default = "frontend_alb"
# }

# variable "vpn_sg_name" {
#   type = string
#   default = "vpn"
# }

# variable "mongodb_sg_name" {
#   type = string
#   default = "mongodb"
# }

# variable "redis_sg_name" {
#   type = string
#   default = "redis"
# }

# variable "mysql_sg_name" {
#   type = string
#   default = "mysql"
# }

# variable "rabbitmq_sg_name" {
#   type = string
#   default = "rabbitmq"
# }

# variable "catalogue_sg_name" {
#   type = string
#   default = "catalogue"
# }

# variable "user_sg_name" {
#   type = string
#   default = "user"
# }

# variable "shipping_sg_name" {
#   type = string
#   default = "shipping"
# }

# variable "payment_sg_name" {
#   type = string
#   default = "payment"
# }

# variable "cart_sg_name" {
#   type = string
#   default = "cart"
# }

# variable "frontend_sg_description" {
#   type = string
#   default = "created sg for frontend instance"
# }

# variable "bastion_sg_description" {
#   type = string
#   default = "created sg for bastion instance"
# }

# variable "backend-alb_sg_description" {
#   type = string
#   default = "created sg for backend-alb instance"
# }

# variable "frontend-alb_sg_description" {
#   type = string
#   default = "created sg for backend-alb instance"
# }

# variable "vpn_sg_description" {
#   type = string
#   default = "created sg for vpn instance"
# }

# variable "mongodb_sg_description" {
#   type = string
#   default = "created sg for mongodb instance"
# }

# variable "redis_sg_description" {
#   type = string
#   default = "created sg for redis instance"
# }

# variable "mysql_sg_description" {
#   type = string
#   default = "created sg for mysql instance"
# }

# variable "rabbitmq_sg_description" {
#   type = string
#   default = "created sg for rabbitmq instance"
# }

# variable "catalogue_sg_description" {
#   type = string
#   default = "created sg for catlogue instance"
# }

# variable "user_sg_description" {
#   type = string
#   default = "created sg for user instance"
# }

# variable "shipping_sg_description" {
#   type = string
#   default = "created sg for shipping instance"
# }

# variable "payment_sg_description" {
#   type = string
#   default = "created sg for payment instance"
# }

# variable "cart_sg_description" {
#   type = string
#   default = "created sg for cart instance"
# }

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