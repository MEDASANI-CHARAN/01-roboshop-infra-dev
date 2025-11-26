# Using Open source module
module "catalogue" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.sg_name   # 👈 Actual SG name in AWS
  use_name_prefix = false
  description = local.description
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  # 👇 This sets the Name tag in AWS Console
  tags = local.sg_tags

  egress_with_cidr_blocks = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = "0.0.0.0/0"
      ipv6_cidr_blocks = "::/0"
    }
  ]
}