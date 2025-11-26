module "sg" {
  count = length(var.sg_names)
#   source = "../../02-terraform-aws-sg-module"
  source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
  project = var.project
  environment = var.environment
  sg_name = var.sg_names[count.index]
  sg_description = var.sg_description[count.index]
  vpc_id = local.vpc_id
  sg_tags = var.sg_tags
}

# module "frontend" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.frontend_sg_name
#   sg_description = var.frontend_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "bastion" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.bastion_sg_name
#   sg_description = var.bastion_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "backend-alb" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.backend-alb_sg_name
#   sg_description = var.backend-alb_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "frontend-alb" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.frontend-alb_sg_name
#   sg_description = var.frontend-alb_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "vpn" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.vpn_sg_name
#   sg_description = var.vpn_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "mongodb" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.mongodb_sg_name
#   sg_description = var.mongodb_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "redis" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.redis_sg_name
#   sg_description = var.redis_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "mysql" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.mysql_sg_name
#   sg_description = var.mysql_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "rabbitmq" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.rabbitmq_sg_name
#   sg_description = var.rabbitmq_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "catalogue" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.catalogue_sg_name
#   sg_description = var.catalogue_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "user" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.user_sg_name
#   sg_description = var.user_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "shipping" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.shipping_sg_name
#   sg_description = var.shipping_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "payment" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.payment_sg_name
#   sg_description = var.payment_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

# module "cart" {
# #   source = "../../02-terraform-aws-sg-module"
#   source = "git::https://github.com/MEDASANI-CHARAN/02-terraform-aws-sg-module.git?ref=main"
#   project = var.project
#   environment = var.environment
#   sg_name = var.cart_sg_name
#   sg_description = var.cart_sg_description
#   vpc_id = local.vpc_id
#   sg_tags = var.sg_tags
# }

resource "aws_security_group_rule" "frontend_frontend-alb" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.sg[9].sg_id
  security_group_id = module.sg[11].sg_id
}

resource "aws_security_group_rule" "ssh_frontend-alb" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.sg[11].sg_id
}