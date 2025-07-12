module "frontend" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.frontend_sg_name
  sg_description = var.frontend_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "bastion" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.bastion_sg_name
  sg_description = var.bastion_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "backend-alb" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.backend-alb_sg_name
  sg_description = var.backend-alb_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "frontend-alb" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.frontend-alb_sg_name
  sg_description = var.frontend-alb_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "vpn" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.vpn_sg_name
  sg_description = var.vpn_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "mongodb" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.mongodb_sg_name
  sg_description = var.mongodb_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "redis" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.redis_sg_name
  sg_description = var.redis_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "mysql" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.mysql_sg_name
  sg_description = var.mysql_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "rabbitmq" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.rabbitmq_sg_name
  sg_description = var.rabbitmq_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "catalogue" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.catalogue_sg_name
  sg_description = var.catalogue_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "user" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.user_sg_name
  sg_description = var.user_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "shipping" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.shipping_sg_name
  sg_description = var.shipping_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "payment" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.payment_sg_name
  sg_description = var.payment_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

module "cart" {
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.cart_sg_name
  sg_description = var.cart_sg_description
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}


# MongoDB
resource "aws_security_group_rule" "mongodb_vpn" {
  count = length(var.mongodb_ports_vpn)
  type              = "ingress"
  from_port         = var.mongodb_ports_vpn[count.index]
  to_port           = var.mongodb_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_bastion" {
  count = length(var.mongodb_ports_vpn)
  type              = "ingress"
  from_port         = var.mongodb_ports_vpn[count.index]
  to_port           = var.mongodb_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_catalogue" {
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  source_security_group_id = module.catalogue.sg_id
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_user" {
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  source_security_group_id = module.user.sg_id
  security_group_id = module.mongodb.sg_id
}

# Redis
resource "aws_security_group_rule" "redis_vpn" {
  count = length(var.redis_ports_vpn)
  type              = "ingress"
  from_port         = var.redis_ports_vpn[count.index]
  to_port           = var.redis_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.redis.sg_id
}

resource "aws_security_group_rule" "redis_bastion" {
  count = length(var.redis_ports_vpn)
  type              = "ingress"
  from_port         = var.redis_ports_vpn[count.index]
  to_port           = var.redis_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.redis.sg_id
}

resource "aws_security_group_rule" "redis_user" {
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  source_security_group_id = module.user.sg_id
  security_group_id = module.redis.sg_id
}

resource "aws_security_group_rule" "redis_cart" {
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  source_security_group_id = module.cart.sg_id
  security_group_id = module.redis.sg_id
}

# MYSQL
resource "aws_security_group_rule" "mysql_vpn" {
  count = length(var.mysql_ports_vpn)
  type              = "ingress"
  from_port         = var.mysql_ports_vpn[count.index]
  to_port           = var.mysql_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.mysql.sg_id
}

resource "aws_security_group_rule" "mysql_bastion" {
  count = length(var.mysql_ports_vpn)
  type              = "ingress"
  from_port         = var.mysql_ports_vpn[count.index]
  to_port           = var.mysql_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.mysql.sg_id
}

resource "aws_security_group_rule" "mysql_shipping" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  source_security_group_id = module.shipping.sg_id
  security_group_id = module.mysql.sg_id
}

# RabbitMQ
resource "aws_security_group_rule" "rabbitmq_vpn" {
  count = length(var.rabbitmq_ports_vpn)
  type              = "ingress"
  from_port         = var.rabbitmq_ports_vpn[count.index]
  to_port           = var.rabbitmq_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.rabbitmq.sg_id
}

resource "aws_security_group_rule" "rabbitmq_bastion" {
  count = length(var.rabbitmq_ports_vpn)
  type              = "ingress"
  from_port         = var.rabbitmq_ports_vpn[count.index]
  to_port           = var.rabbitmq_ports_vpn[count.index]
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.rabbitmq.sg_id
}

resource "aws_security_group_rule" "rabbitmq_payment" {
  type              = "ingress"
  from_port         = 5672
  to_port           = 5672
  protocol          = "tcp"
  source_security_group_id = module.payment.sg_id
  security_group_id = module.rabbitmq.sg_id
}

#Catalogue
resource "aws_security_group_rule" "catalogue_vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "catalogue_bastion_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "catalogue_vpn_http" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.catalogue.sg_id
}

resource "aws_security_group_rule" "catalogue_backend-alb" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.backend-alb.sg_id
  security_group_id = module.catalogue.sg_id
}

#User
resource "aws_security_group_rule" "user_vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.user.sg_id
}

resource "aws_security_group_rule" "user_bastion_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.user.sg_id
}

resource "aws_security_group_rule" "user_vpn_http" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.user.sg_id
}

resource "aws_security_group_rule" "user_backend-alb" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.backend-alb.sg_id
  security_group_id = module.user.sg_id
}

#Cart
resource "aws_security_group_rule" "cart_vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_bastion_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_vpn_http" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_backend-alb" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.backend-alb.sg_id
  security_group_id = module.cart.sg_id
}

#Shipping
resource "aws_security_group_rule" "shipping_vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.shipping.sg_id
}

resource "aws_security_group_rule" "shipping_bastion_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.shipping.sg_id
}

resource "aws_security_group_rule" "shipping_vpn_http" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.shipping.sg_id
}

resource "aws_security_group_rule" "shipping_backend-alb" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.backend-alb.sg_id
  security_group_id = module.shipping.sg_id
}

#Payment
resource "aws_security_group_rule" "payment_vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.payment.sg_id
}

resource "aws_security_group_rule" "payment_bastion_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.payment.sg_id
}

resource "aws_security_group_rule" "payment_vpn_http" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.payment.sg_id
}

resource "aws_security_group_rule" "payment_backend-alb" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.backend-alb.sg_id
  security_group_id = module.payment.sg_id
}

#Backend ALB
resource "aws_security_group_rule" "backend-alb_vpn" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.backend-alb.sg_id
}

resource "aws_security_group_rule" "backend-alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.backend-alb.sg_id
}

resource "aws_security_group_rule" "backend-alb_frontend" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.frontend.sg_id
  security_group_id = module.backend-alb.sg_id
}

resource "aws_security_group_rule" "backend-alb_cart" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.cart.sg_id
  security_group_id = module.backend-alb.sg_id
}

resource "aws_security_group_rule" "backend-alb_shipping" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.shipping.sg_id
  security_group_id = module.backend-alb.sg_id
}

resource "aws_security_group_rule" "backend-alb_payment" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.payment.sg_id
  security_group_id = module.backend-alb.sg_id
}

#Frontend
resource "aws_security_group_rule" "frontend_vpn" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.vpn.sg_id
  security_group_id = module.frontend.sg_id
}

resource "aws_security_group_rule" "frontend_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.frontend.sg_id
}

resource "aws_security_group_rule" "frontend_frontend-alb" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.frontend-alb.sg_id
  security_group_id = module.frontend.sg_id
}

#Frontend ALB
resource "aws_security_group_rule" "frontend-alb_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.frontend-alb.sg_id
}

resource "aws_security_group_rule" "frontend-alb_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.frontend-alb.sg_id
}


resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.bastion.sg_id
}

#VPN ports 22, 443, 1194, 943
resource "aws_security_group_rule" "vpn_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.vpn.sg_id
}

resource "aws_security_group_rule" "vpn_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.vpn.sg_id
}

resource "aws_security_group_rule" "vpn_1194" {
  type              = "ingress"
  from_port         = 1194
  to_port           = 1194
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.vpn.sg_id
}

resource "aws_security_group_rule" "vpn_943" {
  type              = "ingress"
  from_port         = 943
  to_port           = 943
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.vpn.sg_id
}

/* # backend ALB accepting connections from my bastion host on port no 80
resource "aws_security_group_rule" "backend-alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.backend-alb.sg_id
} */